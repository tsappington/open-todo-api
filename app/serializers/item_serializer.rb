class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :created_at, :updated_at
end
