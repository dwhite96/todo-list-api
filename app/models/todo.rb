class Todo < ApplicationRecord
  validates :title, presence: true
  validates :order, presence: true
end
