class CreateDeals < ActiveRecord::Migration
  def self.up
    create_table :deals do |t|
      t.string :intro
      t.string :title
      t.text :description
      t.date :day
      t.string :photo
      t.decimal :price
      t.decimal :value
      t.integer :min
      t.integer :max
      t.text :disclaimer
      t.text :details
      t.datetime :activated_at
      t.date :expires
      t.datetime :coupon_expires
      t.boolean :hide
      t.text :coupon_instructions
      t.integer :coupon_limit
      t.boolean :auths_processed
      t.integer :business_id

      t.timestamps
    end
  end

  def self.down
    drop_table :deals
  end
end
