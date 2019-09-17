class CreateMotorcycles < ActiveRecord::Migration[6.0]
  def change
    create_table :motorcycles do |t|
      t.string :name
      t.string :horsepower
      t.string :top_speed
      t.string :handling_rating
      t.string :comfort_rating
      t.timestamps
    end
  end
end
