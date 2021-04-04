class Product < ApplicationRecord
    has_and_belongs_to_many :categories
    has_many :details
    has_many :colors, through: :details, dependent: :destroy
    has_many :sizes, through: :details, dependent: :destroy

    accepts_nested_attributes_for :details ,allow_destroy: true
    
    has_many :order_items
    has_many :orders, through: :order_items
    
end
