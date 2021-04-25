class Product < ApplicationRecord
    has_and_belongs_to_many :categories
    has_many :details
    has_many :colors, through: :details, dependent: :destroy
    has_many :sizes, through: :details, dependent: :destroy

    has_many :order_items
    has_many :orders, through: :order_items

    accepts_nested_attributes_for :details ,allow_destroy: true
    
    def self.cataloge
        # self.all
        # details = Details.where("stock > 0")

        details = Detail.select(:product_id).distinct.pluck(:product_id)
        Product.where(id: details)
    end
    

end
