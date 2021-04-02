class CreateSizes < ActiveRecord::Migration[6.1]
  def change
    create_table :sizes do |t|
      t.string :name
      t.integer :code_size

      t.timestamps
    end
  end
end
