class RemoveUserCouponIdFromOrder < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :user_coupon_id
  end
end
