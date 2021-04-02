class AddSubcategoryToCategory < ActiveRecord::Migration[6.1]
  def change
    add_reference :categories, :subcategory, null: false, foreign_key: {to_table: :categories}, index: true
  end
end
