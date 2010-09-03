class CreatePaymentMethods < ActiveRecord::Migration
  def self.up
    create_table :payment_methods do |t|
      t.string :cs_subscription_id
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :cc_last_4
      t.string :cc_type
      t.string :cc_exp_month
      t.string :cc_exp_year
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :payment_methods
  end
end
