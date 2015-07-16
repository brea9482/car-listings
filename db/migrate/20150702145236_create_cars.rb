class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :color, null: false
      t.string :year, null: false
      t.integer :mileage, null: false
      t.text :description

      t.integer :manufacturer_id, null: false

      t.timestamps null: false
    end
  end
end
