class Profile < ApplicationRecord
	mount_uploader :profilePicture, ImageUploader
end
