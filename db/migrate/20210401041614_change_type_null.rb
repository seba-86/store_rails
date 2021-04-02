class ChangeTypeNull < ActiveRecord::Migration[6.1]
  def change
    change_column :categories, :subcategory_id, :bigint, null: true
  end
end
