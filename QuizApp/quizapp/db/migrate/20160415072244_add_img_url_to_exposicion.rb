class AddImgUrlToExposicion < ActiveRecord::Migration
  def change
    add_column :exposicions, :imgURL, :string
  end
end
