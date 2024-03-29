# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100903171505) do

  create_table "businesses", :force => true do |t|
    t.string   "name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "url"
    t.text     "info"
    t.integer  "venue_id"
    t.string   "charity_photo"
    t.text     "charity_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coupons", :force => true do |t|
    t.string   "code"
    t.date     "expires"
    t.string   "name"
    t.datetime "activated_at"
    t.datetime "sent_at"
    t.integer  "location_id"
    t.integer  "sale_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deals", :force => true do |t|
    t.string   "intro"
    t.string   "title"
    t.text     "description"
    t.date     "day"
    t.string   "photo"
    t.decimal  "price"
    t.decimal  "value"
    t.integer  "min"
    t.integer  "max"
    t.text     "disclaimer"
    t.text     "details"
    t.datetime "activated_at"
    t.date     "expires"
    t.datetime "coupon_expires"
    t.boolean  "hide"
    t.text     "coupon_instructions"
    t.integer  "coupon_limit"
    t.boolean  "auths_processed"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "title"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_methods", :force => true do |t|
    t.string   "cs_subscription_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "cc_last_4"
    t.string   "cc_type"
    t.string   "cc_exp_month"
    t.string   "cc_exp_year"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", :force => true do |t|
    t.string   "email"
    t.integer  "quantity"
    t.string   "auth_request_token"
    t.string   "auth_request_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.date     "card_expiration"
    t.string   "card_type"
    t.string   "gift_first_name"
    t.string   "gift_last_name"
    t.string   "gift_email"
    t.integer  "deal_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.integer  "birth_year"
    t.string   "zip"
    t.boolean  "subscribed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

end
