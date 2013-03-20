class HoboMigration4 < ActiveRecord::Migration
  def self.up
    remove_column :users, :position
  end

  def self.down
    add_column :users, :position, :integer
  end
end
