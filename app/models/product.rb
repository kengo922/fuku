class Product < ApplicationRecord
  has_many :colors
  validates :head_color, presence: true 
  validates :boy_color, presence: true
  validates :leg_color, presence: true
  validates :shoes_color, presence: true
end
