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

ActiveRecord::Schema.define(version: 20190827064251) do

  create_table "book_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "book_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["book_id"], name: "index_book_categories_on_book_id", using: :btree
    t.index ["category_id"], name: "index_book_categories_on_category_id", using: :btree
  end

  create_table "books", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                           null: false
    t.string   "stock",                          null: false
    t.string   "publisher",                      null: false
    t.string   "publication_date",               null: false
    t.integer  "price",                          null: false
    t.text     "contents",         limit: 65535, null: false
    t.string   "author",                         null: false
    t.integer  "category_id",                    null: false
    t.integer  "books_image_id",                 null: false
    t.integer  "store_id",                       null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["books_image_id"], name: "index_books_on_books_image_id", using: :btree
    t.index ["category_id"], name: "index_books_on_category_id", using: :btree
    t.index ["name", "store_id"], name: "index_books_on_name_and_store_id", using: :btree
    t.index ["store_id"], name: "index_books_on_store_id", using: :btree
  end

  create_table "books_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "images_front_cover"
    t.string   "images_back_cover"
    t.string   "images_spine"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "books_list_in_favorites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "book_id",     null: false
    t.integer  "favorite_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["book_id"], name: "index_books_list_in_favorites_on_book_id", using: :btree
    t.index ["favorite_id"], name: "index_books_list_in_favorites_on_favorite_id", using: :btree
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.integer  "parent_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_favorites_on_user_id", using: :btree
  end

  create_table "installs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_installs_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_installs_on_reset_password_token", unique: true, using: :btree
  end

  create_table "isbn_lists", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",           null: false
    t.integer  "isbn",           null: false
    t.integer  "book_id"
    t.integer  "books_image_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["book_id"], name: "index_isbn_lists_on_book_id", using: :btree
    t.index ["books_image_id"], name: "index_isbn_lists_on_books_image_id", using: :btree
  end

  create_table "statistics", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "prefectures",  null: false
    t.integer  "category_id"
    t.integer  "user_id"
    t.integer  "isbn_list_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["category_id"], name: "index_statistics_on_category_id", using: :btree
    t.index ["isbn_list_id"], name: "index_statistics_on_isbn_list_id", using: :btree
    t.index ["user_id"], name: "index_statistics_on_user_id", using: :btree
  end

  create_table "stores", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                                                         default: "", null: false
    t.string   "encrypted_password",                                            default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "name",                                                                       null: false
    t.text     "address",                limit: 65535,                                       null: false
    t.string   "image",                                                                      null: false
    t.string   "phone_number",                                                               null: false
    t.datetime "created_at",                                                                 null: false
    t.datetime "updated_at",                                                                 null: false
    t.decimal  "latitude",                             precision: 10, scale: 7,              null: false
    t.decimal  "longitude",                            precision: 11, scale: 8,              null: false
    t.index ["email"], name: "index_stores_on_email", unique: true, using: :btree
    t.index ["id", "latitude", "longitude"], name: "index_stores_on_id_and_latitude_and_longitude", using: :btree
    t.index ["reset_password_token"], name: "index_stores_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "nickname",                            null: false
    t.string   "age",                                 null: false
    t.string   "gender",                              null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "book_categories", "books"
  add_foreign_key "book_categories", "categories"
  add_foreign_key "books", "books_images"
  add_foreign_key "books", "categories"
  add_foreign_key "books", "stores"
  add_foreign_key "books_list_in_favorites", "books"
  add_foreign_key "isbn_lists", "books_images"
  add_foreign_key "statistics", "categories"
  add_foreign_key "statistics", "isbn_lists"
  add_foreign_key "statistics", "users"
end
