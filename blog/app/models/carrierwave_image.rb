# class CarrierwaveImage < ActiveRecord::Base
# 	  def change
#     create_table :carrierwave_images do |t|
#       t.string :asset ,:null => false
# belongs_to :users
#       t.timestamps null: false
#        add_foreign_key :carrierwave_images, :users
#    	 end
# 	end
# end
class CarrierwaveImage < ActiveRecord::Base
mount_uploader  :asset, AssetUploader

end
