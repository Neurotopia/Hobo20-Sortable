class HoboMigration6 < ActiveRecord::Migration
  def self.up
    add_column :other_contacts, :position, :integer
  end

  def self.down
    remove_column :other_contacts, :position
  end
end
