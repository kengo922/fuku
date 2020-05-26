class Product < ApplicationRecord
  has_many :colors
  validates :head_color, 
  :boy_color, 
  :leg_color, 
  :shoes_color, 
  presence: true
  
end
