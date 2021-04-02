class ChangeTypeFieldCodeSize < ActiveRecord::Migration[6.1]
  def change
    change_column :sizes, :code_size, :string
  end
end
