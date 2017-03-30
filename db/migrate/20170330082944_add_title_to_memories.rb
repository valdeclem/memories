class AddTitleToMemories < ActiveRecord::Migration[5.0]
  def change
    add_column :memories, :title, :string
  end
end
