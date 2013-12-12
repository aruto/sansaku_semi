class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.references :member, index: true
      t.references :place, index: true

      t.timestamps
    end
  end
end
