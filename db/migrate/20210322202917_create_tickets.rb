class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.references :concert, null: false, foreign_key: true
      t.integer :row
      t.integer :number
      t.references :user, null: true, foreign_key: true
      t.string :status
      t.references :shopping_cart, null: true, foreign_key: true

      t.timestamps
    end
  end
end
