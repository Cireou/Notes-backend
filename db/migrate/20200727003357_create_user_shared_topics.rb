class CreateUserSharedTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :user_shared_topics do |t|
      t.references :owner, references: :users, foreign_key: { to_table: :users}
      t.references :sharee, references: :users, foreign_key: { to_table: :users}
      t.references :shared_topic,  references: :topics, foreign_key: { to_table: :topics}
      t.string :permission
      t.timestamps
    end
  end
end
