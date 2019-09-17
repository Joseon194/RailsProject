class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.integer :user_id
      t.integer :car_id
      t.integer :motorcycle_id
      t.timestamps
    end
  end
end
