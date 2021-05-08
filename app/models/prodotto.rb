class Prodotto < ApplicationRecord
	belongs_to :user
	mount_uploader :image, ImageUploaderUploader
end
