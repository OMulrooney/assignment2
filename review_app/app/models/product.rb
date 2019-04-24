class Product < ApplicationRecord
	mount_uploader :productImage, ImageUploader
	has_many :reviews
end
