class ChangeTypePhotoUser < ActiveRecord::Migration
  def up
    change_column :users, :photo, :string
  end

  def down
    change_column :users, :photo, :integer
  end
end
