class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :user
      t.string :hashed_password
      t.boolean :administrator

      t.timestamps
    end
  end
end
