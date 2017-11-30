class Sneaker < ApplicationRecord
  belongs_to :brand
  # has_many :order_sneakers
  belongs_to :category
  mount_uploader :image, ImageUploader

  def self.search(term)
    if term
      where('nickname LIKE ?', "%#{term}%")
    else
      all
    end
  end
end
