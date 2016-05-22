class AddTitleToComment < ActiveRecord::Migration
  def change
    add_column :comments, :title, :string
    add_column :comments, :photo, :string
  end
end
