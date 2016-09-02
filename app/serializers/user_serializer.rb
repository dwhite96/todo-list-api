class UserSerializer < ActiveModel::Serializer
  attributes :handle

  has_many :todos
end