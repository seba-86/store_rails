class Coupon < ApplicationRecord
    before_create :create_code
    has_many :user_coupons
    has_many :users, through: :user_coupons


    def create_code
        self.code_coupon = "#{prefix}#{Time.now.to_i.to_s(16)}#{SecureRandom.hex(2)}"
    end

    def prefix
        "CO"
    end
end
