class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  has_many :sub_todos
end
