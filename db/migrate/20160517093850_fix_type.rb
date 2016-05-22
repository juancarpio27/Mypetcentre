class FixType < ActiveRecord::Migration
  def self.up
    rename_column :services, :type, :service_type
  end
end
