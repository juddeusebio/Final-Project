class Sneaker < ApplicationRecord
  belongs_to :brand
  # has_many :order_sneakers
  has_many :categories
mount_uploader :image, ImageUploader
end
