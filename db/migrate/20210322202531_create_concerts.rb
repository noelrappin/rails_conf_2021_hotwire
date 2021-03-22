class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.string :name
      t.text :description
      t.datetime :start_time
      t.references :venue, null: false, foreign_key: true
      t.text :genre_tags
      t.string :ilk
      t.string :access

      t.timestamps
    end
  end
end
