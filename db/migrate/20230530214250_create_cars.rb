class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.text :photo
      t.string :name
      t.text :description
      t.string :brand
      t.integer :lending_fee
      t.timestamps
    end
  end
end
