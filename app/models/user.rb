class User < ApplicationRecord
  validates_presence_of :uid, :handle

  has_many :todos
end
