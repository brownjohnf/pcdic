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

ActiveRecord::Schema.define(:version => 20120508120153) do

  create_table "definitions", :force => true do |t|
    t.integer  "word_id"
    t.string   "content"
    t.integer  "priority"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "entries", :force => true do |t|
    t.string   "part_a"
    t.string   "part_b"
    t.string   "part_c"
    t.string   "part_d"
    t.string   "part_e"
    t.string   "part_f"
    t.integer  "part_of_speech_id"
    t.integer  "language_id"
    t.string   "primary_part"
    t.string   "first_form"
    t.string   "second_form"
    t.string   "third_form"
    t.text     "comments"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "master_tags", :force => true do |t|
    t.string   "en"
    t.string   "fr"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "master_tags_words", :id => false, :force => true do |t|
    t.integer "master_tag_id"
    t.integer "word_id"
  end

  add_index "master_tags_words", ["master_tag_id", "word_id"], :name => "index_master_tags_words_on_master_tag_id_and_word_id", :unique => true
  add_index "master_tags_words", ["master_tag_id"], :name => "index_master_tags_words_on_master_tag_id"
  add_index "master_tags_words", ["word_id"], :name => "index_master_tags_words_on_word_id"

  create_table "part_of_speeches", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "relationship_types", :force => true do |t|
    t.string   "name"
    t.string   "pictogram"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relationship_types", ["name"], :name => "index_relationship_types_on_name", :unique => true
  add_index "relationship_types", ["pictogram"], :name => "index_relationship_types_on_pictogram", :unique => true

  create_table "relationships", :force => true do |t|
    t.integer  "word_a_id"
    t.integer  "word_b_id"
    t.integer  "relationship_type_id"
    t.integer  "user_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "relationships", ["relationship_type_id"], :name => "index_relationships_on_relationship_type_id"
  add_index "relationships", ["word_a_id", "word_b_id", "relationship_type_id"], :name => "my_relation_index", :unique => true
  add_index "relationships", ["word_a_id"], :name => "index_relationships_on_word_a_id"
  add_index "relationships", ["word_b_id"], :name => "index_relationships_on_word_b_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "roles_users", ["role_id", "user_id"], :name => "index_roles_users_on_role_id_and_user_id", :unique => true
  add_index "roles_users", ["role_id"], :name => "index_roles_users_on_role_id"
  add_index "roles_users", ["user_id"], :name => "index_roles_users_on_user_id"

  create_table "usages", :force => true do |t|
    t.integer  "word_id"
    t.string   "example"
    t.integer  "priority"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

  create_table "word_histories", :force => true do |t|
    t.integer  "word_id"
    t.integer  "user_id"
    t.integer  "part_of_speech_id"
    t.integer  "language_id"
    t.string   "part_a"
    t.string   "part_b"
    t.string   "part_c"
    t.string   "part_d"
    t.string   "part_e"
    t.string   "part_f"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "words", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
