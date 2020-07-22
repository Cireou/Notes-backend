class UsersController < ApplicationController
    skip_before_action :authenticate_request, only: [:create]
    def index()
        users = User.all()
        render json: users
    end

    def create()
        new_user = User.new(user_params())
        if new_user.valid?
            new_user.save()
            command = AuthenticateUser.call(new_user.email, new_user.password)
    
            if command.success?
                render json: { auth_token: command.result }
            else
                render json: { error: command.errors }, status: :unauthorized
            end
        else 
            render json: new_user.errors.messages
        end
    end

    def show()
        user = User.find(params[:id])
        render json: user
    end

    def update()
        current_user.update(user_params())
        if @user.valid?
            render json: @user
        else 
            render json: @user.errors.messages
        end
    end

    def destroy()
        @user.destroy
    end
    private 

    def user_params()
        params.require(:users).permit(:username, :email, :password, :password_confirmation)
    end

end
