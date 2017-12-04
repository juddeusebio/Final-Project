class Sneaker < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  mount_uploader :image, ImageUploader

  # def self.search(term)
  #   if term
  #     where('nickname LIKE ?', "%#{term}%")
  #   else
  #     all
  #   end
  # end

  paginates_per 5
end
