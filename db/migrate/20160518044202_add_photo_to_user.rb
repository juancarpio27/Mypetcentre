class AddPhotoToUser < ActiveRecord::Migration
  def change
    add_column :users, :photo, :integer
  end
end
