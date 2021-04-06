class Detail < ApplicationRecord
  belongs_to :color
  belongs_to :size
  belongs_to :product

  has_many :order_items
end
