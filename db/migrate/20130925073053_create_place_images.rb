class CreatePlaceImages < ActiveRecord::Migration
  def change
    create_table :place_images do |t|
      t.references :place
      t.binary :data
      t.string :content_type

      t.timestamps
    end
  end
end
