class Category < ActiveRecord::Base
  validates :name, presence: true,
            length: { minimum: 1 }
end
