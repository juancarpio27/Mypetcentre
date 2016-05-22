class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|

      t.string :address
      t.float :longitude
      t.float :latitude
      t.integer :price
      t.string :unit

      t.references :provider

      t.timestamps null: false
    end

    add_foreign_key :services, :providers

  end
end
