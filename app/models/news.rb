class News < ActiveRecord::Base
	attr_accessor :text, :title, :image, :remote_image_url
	mount_uploader :image, ImageUploader
end
