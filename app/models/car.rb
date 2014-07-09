class Car < ActiveRecord::Base
  has_many :car_listings

  validates :name, presence: true
end
