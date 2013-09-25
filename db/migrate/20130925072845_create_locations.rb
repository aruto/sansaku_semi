class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.float :altitude
      t.float :accuracy
      t.float :altitude_accuracy
      t.float :heading
      t.float :speed
      t.integer :error_code
      t.datetime :timestamp
      t.integer :member

      t.timestamps
    end
  end
end
