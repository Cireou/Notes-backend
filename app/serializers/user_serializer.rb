class UserSerializer < ActiveModel::Serializer
  attributes :id, :display_name, :username, :password, :password_digest
end
