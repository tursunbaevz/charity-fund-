class News < ActiveRecord::Base
	attr_accessor :remote_image_url
	mount_uploader :image, ImageUploader
end
