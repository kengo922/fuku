class Product < ApplicationRecord
  has_many :colors
  validates :head_color, presence: true ,acceptance: true
  validates :boy_color, presence: true,acceptance: true
  validates :leg_color, presence: true,acceptance: true
  validates :shoes_color, presence: true,acceptance: true
  

end
