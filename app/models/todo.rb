class Todo < ApplicationRecord
  belongs_to :user
  has_many :sub_todos
end
