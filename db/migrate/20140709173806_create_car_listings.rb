class CreateCarListings < ActiveRecord::Migration
  def change
    create_table :car_listings do |t|
      t.integer :car_id, null: false
      t.integer :dealership_id, null: false
      t.integer :price, null: false

      t.timestamps
    end
  end
end
