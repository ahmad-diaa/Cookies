class AddAssetToCarrierwaveImage < ActiveRecord::Migration
  def change
    add_column :carrierwave_images, :asset, :string
  end
end
