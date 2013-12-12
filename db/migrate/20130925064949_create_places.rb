class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.references :category, index: true
      t.float :lat
      t.float :lng
      t.text :description
      t.text :address
      t.text :tel
      t.text :time
      t.references :type, index:true

      t.timestamps
    end
  end
end
