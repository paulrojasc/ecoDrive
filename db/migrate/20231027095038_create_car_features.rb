class CreateCarFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :car_features do |t|
      t.references :car, null: false, foreign_key: true
      t.references :feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
