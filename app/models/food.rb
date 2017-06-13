class Food < ApplicationRecord
  belongs_to :mood

  validates presence: true
end
