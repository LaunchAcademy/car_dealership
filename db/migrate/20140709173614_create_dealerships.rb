class CreateDealerships < ActiveRecord::Migration
  def change
    create_table :dealerships do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
