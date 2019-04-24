class Profile < ApplicationRecord
	mount_uploader :profilePicture, ImageUploader
	has_many :review
end
