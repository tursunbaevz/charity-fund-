class News < ActiveRecord::Base
	attr_accessor :remote_image_url
	mount_uploader :image, ImageUploader
	default_scope { order(created_at: :desc) }
end
