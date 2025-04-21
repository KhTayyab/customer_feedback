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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170808143943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "form_number"
    t.string   "store_number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "email"
    t.string   "gender"
    t.datetime "date_of_birth"
    t.text     "hear_about_us"
    t.string   "rate_our_quality"
    t.string   "rate_our_design"
    t.string   "rate_our_variety"
    t.string   "rate_our_stitching"
    t.string   "rate_our_pricing"
    t.string   "rate_our_customer_care"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string   "shop_name"
    t.string   "shop_code"
    t.string   "shop_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
