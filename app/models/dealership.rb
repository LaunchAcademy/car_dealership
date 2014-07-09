class Dealership < ActiveRecord::Base
  validates :name, presence: true

  def self.default
    find_by(name: "Alex's Cars")
  end
end
