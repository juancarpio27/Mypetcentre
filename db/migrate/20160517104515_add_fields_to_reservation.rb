class AddFieldsToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :phone, :string
    add_column :reservations, :pet_type, :integer
    add_column :reservations, :pet_size, :integer
    add_column :reservations, :quantity, :integer


    add_column :reservations, :card_name, :string
    add_column :reservations, :exp_month, :string
    add_column :reservations, :exp_year, :string
    add_column :reservations, :cvv, :string
    add_column :reservations, :card_number, :string
  end
end
