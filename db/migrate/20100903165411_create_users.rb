class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :birth_year
      t.string :zip
      t.boolean :subscribed
      
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
