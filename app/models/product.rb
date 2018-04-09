class Product < ApplicationRecord
    has_many :orders
    
    def self.search(search)
      where("product LIKE ?", "%#{search}%")
    end
    
end 
