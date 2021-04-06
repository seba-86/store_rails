class AddForeignKeyToOrderItem < ActiveRecord::Migration[6.1]
  def change
    add_reference :order_items, :detail, null: true, foreign_key: true
  end
end
