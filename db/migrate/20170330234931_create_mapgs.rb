class CreateMapgs < ActiveRecord::Migration[5.0]
  def change
    create_table :mapgs do |t|
      t.float :latitude
      t.float :longitude
      t.string :adress
      t.references :memories, foreign_key: true

      t.timestamps
    end
  end
end
