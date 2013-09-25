class CreateMyMaps < ActiveRecord::Migration
  def change
    create_table :my_maps do |t|
      t.references :member, index: true

      t.timestamps
    end
  end
end
