class FoodSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :mood, :created_at
  has_one :name
end
