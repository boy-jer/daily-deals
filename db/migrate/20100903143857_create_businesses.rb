class CreateBusinesses < ActiveRecord::Migration
  def self.up
    create_table :businesses do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :url
      t.text :info
      t.integer :venue_id
      t.string :charity_photo
      t.text :charity_text

      t.timestamps
    end
  end

  def self.down
    drop_table :businesses
  end
end
