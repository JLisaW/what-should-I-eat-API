class MoodSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :food, :created_at
  has_one :title
end
