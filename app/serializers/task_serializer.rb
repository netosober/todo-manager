class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :due_on, :completed_on
end