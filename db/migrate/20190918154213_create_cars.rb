class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :image
      t.string :category
      t.integer :doors
      t.integer :seats
      t.string :gearshift
      t.boolean :air
      t.integer :lagguage
      t.string :pick_up
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
