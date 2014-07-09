class CarListing < ActiveRecord::Base
  belongs_to :car
  belongs_to :dealership

  validates :car, presence: true
  validates :dealership, presence: true
  validates :price, presence: true
end
