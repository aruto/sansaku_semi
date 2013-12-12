class AddFieldToPlaces < ActiveRecord::Migration
  def up
      add_column :places, :address,  :text
      add_column :places, :tel,  :text
      add_column :places, :time,  :text
  end

  def down
      remove_column :places, :address
      remove_column :places, :tel
      remove_column :places, :time
  end
end
