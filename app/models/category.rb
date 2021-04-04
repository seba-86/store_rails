class Category < ApplicationRecord
    has_and_belongs_to_many :products

    # def name_categories
    #     self.name = Category.where("name = ?", params[:name])
       
    # end
end
