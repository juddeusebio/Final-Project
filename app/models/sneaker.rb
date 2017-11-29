class Sneaker < ApplicationRecord
  belongs_to :brand
  # has_many :order_sneakers
  belongs_to :category
  mount_uploader :image, ImageUploader
end
