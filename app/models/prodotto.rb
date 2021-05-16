class Prodotto < ApplicationRecord
	belongs_to :user
  has_many :reviews, dependent: :destroy
	mount_uploader :image, ImageUploaderUploader
end
