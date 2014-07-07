class Product < ActiveRecord::Base
  has_many :photos
  has_many :categories_products
  accepts_nested_attributes_for :photos

  validates :name, presence: true,
            length: { minimum: 2 }

  validates :price, :presence => true,
            :format => { :with => /\A(\$)?(\d+)(\.|,)?\d{0,2}?\z/ }
  
end
