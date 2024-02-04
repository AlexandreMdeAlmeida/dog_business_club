# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_02_04_212327) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.bigint "city_id", null: false
    t.string "name"
    t.text "description"
    t.string "website_url"
    t.date "activity_date"
    t.string "address"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "contact_number"
    t.time "opening_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_activities_on_city_id"
  end

  create_table "cities", force: :cascade do |t|
    t.bigint "country_id", null: false
    t.string "name"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "country_code"
    t.string "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pet_owners", force: :cascade do |t|
    t.bigint "city_id", null: false
    t.binary "profile_picture"
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password"
    t.string "password_confirmation"
    t.string "gender"
    t.string "email"
    t.string "phone_number"
    t.string "emergency_phone_number"
    t.string "address"
    t.string "address_line2"
    t.string "postal_code"
    t.string "state_province"
    t.string "dog_name"
    t.string "dog_breed"
    t.text "additional_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_pet_owners_on_city_id"
  end

  create_table "pet_professionals", force: :cascade do |t|
    t.bigint "city_id", null: false
    t.binary "profile_picture"
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password"
    t.string "password_confirmation"
    t.string "gender"
    t.string "email"
    t.string "phone_number"
    t.string "emergency_phone_number"
    t.string "address"
    t.string "address_line2"
    t.string "postal_code"
    t.string "state_province"
    t.string "business_name"
    t.string "profession"
    t.string "social_media"
    t.binary "professional_certificate"
    t.string "company_registration_number"
    t.binary "business_license"
    t.text "short_bio"
    t.text "short_work_description"
    t.integer "years_of_experience"
    t.string "services_offered"
    t.string "business_hours"
    t.binary "about_me_video_file"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_pet_professionals_on_city_id"
  end

  create_table "professional_courses", force: :cascade do |t|
    t.bigint "city_id", null: false
    t.string "course_name"
    t.text "description"
    t.string "course_duration"
    t.date "start_date"
    t.date "end_date"
    t.boolean "online"
    t.string "address"
    t.string "prerequisites"
    t.string "website_url"
    t.boolean "certification_provided"
    t.string "contact_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_professional_courses_on_city_id"
  end

  create_table "professional_reviews", force: :cascade do |t|
    t.float "rating"
    t.string "review_text"
    t.date "review_date"
    t.bigint "pet_owner_id", null: false
    t.bigint "pet_professional_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_owner_id"], name: "index_professional_reviews_on_pet_owner_id"
    t.index ["pet_professional_id"], name: "index_professional_reviews_on_pet_professional_id"
  end

  create_table "professional_services", force: :cascade do |t|
    t.bigint "service_id", null: false
    t.bigint "pet_professional_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_professional_id"], name: "index_professional_services_on_pet_professional_id"
    t.index ["service_id"], name: "index_professional_services_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.binary "profile_picture"
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "gender"
    t.string "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "website_reviews", force: :cascade do |t|
    t.float "rating"
    t.string "review_text"
    t.date "review_date"
    t.bigint "pet_owner_id", null: false
    t.bigint "pet_professional_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_owner_id"], name: "index_website_reviews_on_pet_owner_id"
    t.index ["pet_professional_id"], name: "index_website_reviews_on_pet_professional_id"
  end

  add_foreign_key "activities", "cities"
  add_foreign_key "cities", "countries"
  add_foreign_key "pet_owners", "cities"
  add_foreign_key "pet_professionals", "cities"
  add_foreign_key "professional_courses", "cities"
  add_foreign_key "professional_reviews", "pet_owners"
  add_foreign_key "professional_reviews", "pet_professionals"
  add_foreign_key "professional_services", "pet_professionals"
  add_foreign_key "professional_services", "services"
  add_foreign_key "website_reviews", "pet_owners"
  add_foreign_key "website_reviews", "pet_professionals"
end
