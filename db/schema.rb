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

ActiveRecord::Schema.define(version: 20180906094531) do

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["password"], name: "index_admins_on_password", unique: true, using: :btree
  end

  create_table "gym_classes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "description"
    t.string   "name"
    t.integer  "gym_entity_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["gym_entity_id"], name: "index_gym_classes_on_gym_entity_id", using: :btree
  end

  create_table "gym_entities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "rating"
    t.string   "gymCode"
    t.boolean  "approved"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gymCode"], name: "index_gym_entities_on_gymCode", unique: true, using: :btree
    t.index ["user_id"], name: "index_gym_entities_on_user_id", using: :btree
  end

  create_table "gym_locations", primary_key: ["gym_entity_id", "location"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "location",      null: false
    t.integer  "gym_entity_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["gym_entity_id"], name: "index_gym_locations_on_gym_entity_id", using: :btree
  end

  create_table "gym_ratings", primary_key: ["gym_entity_id", "user_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "rating"
    t.integer  "gym_entity_id", null: false
    t.integer  "user_id",       null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["gym_entity_id"], name: "index_gym_ratings_on_gym_entity_id", using: :btree
    t.index ["user_id"], name: "index_gym_ratings_on_user_id", using: :btree
  end

  create_table "trainer_ratings", primary_key: ["trainer_id", "user_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "rating"
    t.integer  "trainer_id", null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trainer_id"], name: "index_trainer_ratings_on_trainer_id", using: :btree
    t.index ["user_id"], name: "index_trainer_ratings_on_user_id", using: :btree
  end

  create_table "trainers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "rating"
    t.string   "city"
    t.string   "description"
    t.string   "imageURL"
    t.string   "phone"
    t.boolean  "approved"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_trainers_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "fName"
    t.string   "lName"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["password"], name: "index_users_on_password", unique: true, using: :btree
  end

  add_foreign_key "gym_classes", "gym_entities"
  add_foreign_key "gym_entities", "users"
  add_foreign_key "gym_locations", "gym_entities"
  add_foreign_key "gym_ratings", "gym_entities"
  add_foreign_key "gym_ratings", "users"
  add_foreign_key "trainer_ratings", "trainers"
  add_foreign_key "trainer_ratings", "users"
  add_foreign_key "trainers", "users"
end
