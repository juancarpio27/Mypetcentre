class AddLocationPhotoToService < ActiveRecord::Migration
  def change
    add_column :services, :location, :string
    add_column :services, :photo, :string
  end
end
