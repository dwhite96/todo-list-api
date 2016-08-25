class User < ApplicationRecord
  validates_presence_of :uid, :handle
end
