class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|

      t.date :start
      t.date :end
      t.integer :price
      t.integer :deliver
      t.integer :status

      t.references :service

      t.timestamps null: false
    end
    add_foreign_key :reservations, :services
  end
end
