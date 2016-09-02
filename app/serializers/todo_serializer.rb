class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :completed

  belongs_to(:user) { object.user.handle }
end
