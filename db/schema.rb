# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130610200139) do

  create_table "clinics", :force => true do |t|
    t.string   "clinic_name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "contact_name"
    t.string   "contact_title"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.string   "clinic_type"
    t.string   "perc_women"
    t.string   "perc_msm"
    t.string   "perc_under_26"
    t.string   "perc_black"
    t.string   "perc_hispanic"
    t.string   "test_ct"
    t.string   "diag_ct"
    t.string   "test_gc"
    t.string   "diag_gc"
    t.string   "test_trich"
    t.string   "diag_trich"
    t.string   "test_hiv"
    t.string   "diag_hiv"
    t.string   "charge_ct"
    t.string   "deliver_ct_results"
    t.string   "notify_test_ready"
    t.string   "ask_pn"
    t.string   "clinic_status"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "author_name"
    t.text     "body"
    t.integer  "clinic_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "comments", ["clinic_id"], :name => "index_comments_on_clinic_id"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "clinic_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "taggings", ["clinic_id"], :name => "index_taggings_on_clinic_id"
  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
