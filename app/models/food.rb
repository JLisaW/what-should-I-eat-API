class Food < ApplicationRecord
  belongs_to :emotion
  # class_name: 'Mood', foreign_key: 'mood_id'

  validates :food_item, presence: true
end
