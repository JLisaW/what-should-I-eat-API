class MoodSerializer < ActiveModel::Serializer
  attributes :id, :emotion, :food, :user_id
  has_one :emotion
end
