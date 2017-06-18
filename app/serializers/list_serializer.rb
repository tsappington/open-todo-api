class ListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :permissions, :created_at, :updated_at
end
