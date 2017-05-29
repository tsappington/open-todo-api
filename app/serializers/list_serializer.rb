class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :public, :private, :description, :created_at, :updated_at
end
