class CreateRefuellings < ActiveRecord::Migration
  def change
    create_table :refuellings do |t|
      t.date :date
      t.integer :mileage
      t.decimal :liter_price
      t.float :liters
      t.string :gas_station
      t.float :average_consumption
      t.integer :traveled_mileage
      t.decimal :total_value
      t.references :vehicle, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
