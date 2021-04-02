class CreateDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :details do |t|
      t.integer :stock
      t.references :color, null: false, foreign_key: true
      t.references :size, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
