class CreateCoupons < ActiveRecord::Migration[6.1]
  def change
    create_table :coupons do |t|
      t.string :name
      t.string :code_coupon

      t.timestamps
    end
  end
end
