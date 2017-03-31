class AddMapsToMemories < ActiveRecord::Migration[5.0]
  def change
    add_column :memories, :latitude, :float
    add_column :memories, :longitude, :float
    add_column :memories, :adress, :string
  end
end
