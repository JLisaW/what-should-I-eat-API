class MoodSerializer < ActiveModel::Serializer
  attributes :id, :food
  has_many :foods
end
