class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :category
      t.string :suburb
      t.string :address
      t.decimal :location
      t.string :status
      t.integer :car_space
      t.integer :bike_space
      t.string :town_planning_permit

      t.timestamps
    end
  end
end
