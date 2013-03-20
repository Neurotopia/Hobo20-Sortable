class HoboMigration5 < ActiveRecord::Migration
  def self.up
    create_table :other_contacts do |t|
      t.string   :name
      t.date     :birthday
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :other_contacts
  end
end
