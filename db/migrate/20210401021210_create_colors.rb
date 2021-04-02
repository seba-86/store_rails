class CreateColors < ActiveRecord::Migration[6.1]
  def change
    create_table :colors do |t|
      t.string :name
      t.integer :code_color

      t.timestamps
    end
  end
end
