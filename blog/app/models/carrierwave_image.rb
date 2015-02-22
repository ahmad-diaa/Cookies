class CarrierwaveImage < ActiveRecord::Base
	mount_uploader  :asset, AssetUploader
	belongs_to :users
end
