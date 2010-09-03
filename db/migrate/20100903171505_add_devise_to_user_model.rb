class AddDeviseToUserModel < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
       t.database_authenticatable
       t.confirmable
       t.recoverable
       t.rememberable
       t.trackable
     end
  end

  def self.down
    drop_table :users
  end
end
