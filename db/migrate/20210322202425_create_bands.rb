class CreateBands < ActiveRecord::Migration[6.1]
  def change
    create_table :bands do |t|
      t.string :name
      t.text :description
      t.text :genre_tags

      t.timestamps
    end
  end
end
