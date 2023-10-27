class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.date :year_production
      t.integer :driving_range
      t.integer :rental_price
      t.string :image
      t.boolean :rented
      t.references :user, null: false, foreign_key: true
      t.references :modelcar, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true
      t.references :feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
