class Food < ActiveRecord::Base
  belongs_to :moods

  validates :name, :mood, presence: true
end
