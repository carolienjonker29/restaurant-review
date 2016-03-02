class Restaurant < ActiveRecord::Base
  has_many :reviews
  validates :name, :address, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
    message: "%{value} is not a valid category" }
end
