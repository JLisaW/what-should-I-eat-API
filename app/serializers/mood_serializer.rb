class MoodSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :food
  has_one :title
end
