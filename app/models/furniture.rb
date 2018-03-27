class Furniture < ApplicationRecord
	belongs_to :user, required: false

  #mount_uploader :image, AvatarUploader


 	scope :item, -> (input_item) { where("item ILIKE ?", "%#{input_item}%") }
  	# scope :size, -> (size) { where size: size }

  # def self.size(query)
  #   where("size ILIKE :size", size: "%#{query}%")
  # end
end
