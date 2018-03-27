class Furniture < ApplicationRecord
	belongs_to :user, required: false

  #mount_uploader :image, AvatarUploader

  include PgSearch
  	pg_search_scope :search_engine, :against => [:name, :size]
 	# scope :name, -> (input_name) { where("name ILIKE ?", "%#{input_name}%") }
  	scope :size, -> (input_size) { where("size ILIKE ?", "%#{input_size}%") }
end
