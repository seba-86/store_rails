class ChangeTypeFieldCodeColor < ActiveRecord::Migration[6.1]
  def change
    change_column :colors, :code_color, :string
  end
end
