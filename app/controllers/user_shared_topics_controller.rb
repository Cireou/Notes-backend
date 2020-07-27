class UserSharedTopicsController < ApplicationController
  before_action :set_user_shared_topic, only: [:show, :update, :destroy]

  # GET /user_shared_topics
  def index
    @user_shared_topics = current_user.user_shared_topics

    render json: @user_shared_topics
  end

  # GET /user_shared_topics/1
  def show
    render json: @user_shared_topic
  end

  # POST /user_shared_topics
  def create
    create_params()
    @user_shared_topic = UserSharedTopic.new(user_shared_topic_params)

    if @user_shared_topic.save
      render json: @user_shared_topic, status: :created, location: @user_shared_topic
    else
      render json: @user_shared_topic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_shared_topics/1
  def update
    if @user_shared_topic.update(user_shared_topic_params)
      render json: @user_shared_topic
    else
      render json: @user_shared_topic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_shared_topics/1
  def destroy
    @user_shared_topic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_shared_topic
      @user_shared_topic = UserSharedTopic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_shared_topic_params
      params.require(:user_shared_topic).permit(:owner_id, :sharee_id, :shared_topic_id, :permission)
    end

    def create_params
      shared_user = User.find_by_email(params[:sharee_email])
      params[:user_shared_topic] = {
        owner_id: current_user.id, 
        sharee_id: (shared_user) ? shared_user.id : "none",
        shared_topic_id: params[:shared_topic_id]
      }
      return params
    end
end
