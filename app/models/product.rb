class Product < ApplicationRecord
    has_and_belongs_to_many :categories
    has_many :details
    has_many :colors, through: :details, dependent: :destroy 
    has_many :sizes, through: :details, dependent: :destroy 

    
end
