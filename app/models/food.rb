class Food < ActiveRecord::Base
  belongs_to :moods

  validates :title, :food, presence: true
end
