class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :place, index: true
      t.string :comment
      t.string :name

      t.timestamps
    end
  end
end
