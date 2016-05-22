class AddRatingToService < ActiveRecord::Migration
  def change
    add_column :services, :rating, :string
  end
end
