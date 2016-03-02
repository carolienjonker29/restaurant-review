class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 0..5,
    message: "%{value} should be a number between 0 and 5" }
  validates :restaurant, presence: true
end
