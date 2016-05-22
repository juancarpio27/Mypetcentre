class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|

      t.string :name
      t.string :last_name
      t.string :email
      t.string :sex
      t.date :birth
      t.string :phone

      t.timestamps null: false
    end
  end
end
