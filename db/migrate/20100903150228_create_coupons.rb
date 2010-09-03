class CreateCoupons < ActiveRecord::Migration
  def self.up
    create_table :coupons do |t|
      t.string :code
      t.date :expires
      t.string :name
      t.datetime :activated_at
      t.datetime :sent_at
      t.integer :location_id
      t.integer :sale_id

      t.timestamps
    end
  end

  def self.down
    drop_table :coupons
  end
end
