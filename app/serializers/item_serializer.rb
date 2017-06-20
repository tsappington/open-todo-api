class ItemSerializer < ActiveModel::Serializer
  attributes :id, :completed, :name, :description, :created_at, :updated_at
end
