class Mood < ActiveRecord::Base
  belongs_to :user

  validates :title, :food, presence: true
end
