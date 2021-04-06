class CreateUserCoupons < ActiveRecord::Migration[6.1]
  def change
    create_table :user_coupons do |t|
      t.boolean :type
      t.integer :discount
      t.references :user, null: false, foreign_key: true
      t.references :coupon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
