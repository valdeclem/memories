class AddAtributeToMemories < ActiveRecord::Migration[5.0]
  def change
    add_column :memories, :category, :string
    add_reference :memories, :user, foreign_key: true
  end
end
