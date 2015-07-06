class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :numberplate
      t.string :brand
      t.string :model
      t.integer :fabrication

      t.timestamps null: false
    end
  end
end
