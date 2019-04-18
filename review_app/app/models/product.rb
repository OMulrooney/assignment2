class Product < ApplicationRecord
	mount_uploader :productImage, ImageUploader
end
