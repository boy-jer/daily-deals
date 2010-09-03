class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :title
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.integer :business_id

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
