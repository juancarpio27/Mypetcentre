class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

      t.string :information
      t.integer :rating
      t.integer :q1
      t.integer :q2
      t.integer :q3

      t.references :service

      t.timestamps null: false
    end
    add_foreign_key :comments, :services
  end
end
