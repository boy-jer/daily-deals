class CreateSales < ActiveRecord::Migration
  def self.up
    create_table :sales do |t|
      t.string :email
      t.integer :quantity
      t.string :auth_request_token
      t.string :auth_request_id
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.date :card_expiration
      t.string :card_type
      t.string :gift_first_name
      t.string :gift_last_name
      t.string :gift_email

      t.timestamps
    end
  end

  def self.down
    drop_table :sales
  end
end
