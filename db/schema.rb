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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160301222027) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.string   "title"
    t.text     "body"
    t.string   "subject"
    t.integer  "user_id",          null: false
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.integer  "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries_resources", force: :cascade do |t|
    t.integer  "country_id"
    t.integer  "resource_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "country_translations", force: :cascade do |t|
    t.integer  "country_id", null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  add_index "country_translations", ["country_id"], name: "index_country_translations_on_country_id", using: :btree
  add_index "country_translations", ["locale"], name: "index_country_translations_on_locale", using: :btree

  create_table "genders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages_resources", force: :cascade do |t|
    t.integer  "language_id"
    t.integer  "resource_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "materialtype_translations", force: :cascade do |t|
    t.integer  "materialtype_id", null: false
    t.string   "locale",          null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
  end

  add_index "materialtype_translations", ["locale"], name: "index_materialtype_translations_on_locale", using: :btree
  add_index "materialtype_translations", ["materialtype_id"], name: "index_materialtype_translations_on_materialtype_id", using: :btree

  create_table "materialtypes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oldlinks", force: :cascade do |t|
    t.integer  "pnid"
    t.integer  "ptnid"
    t.integer  "plang"
    t.string   "ptitle"
    t.integer  "pbid"
    t.integer  "pmlid"
    t.integer  "cmlid"
    t.integer  "cnid"
    t.integer  "ctnid"
    t.string   "ctype"
    t.string   "ctitle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organization_translations", force: :cascade do |t|
    t.integer  "organization_id", null: false
    t.string   "locale",          null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
  end

  add_index "organization_translations", ["locale"], name: "index_organization_translations_on_locale", using: :btree
  add_index "organization_translations", ["organization_id"], name: "index_organization_translations_on_organization_id", using: :btree

  create_table "organizations", force: :cascade do |t|
    t.string   "contact"
    t.boolean  "isactive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "page_translations", force: :cascade do |t|
    t.integer  "page_id",    null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "body"
  end

  add_index "page_translations", ["locale"], name: "index_page_translations_on_locale", using: :btree
  add_index "page_translations", ["page_id"], name: "index_page_translations_on_page_id", using: :btree

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "language"
    t.integer  "tid"
    t.integer  "pagetype_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "post_translations", force: :cascade do |t|
    t.integer  "post_id",     null: false
    t.string   "locale",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "title"
    t.text     "description"
  end

  add_index "post_translations", ["locale"], name: "index_post_translations_on_locale", using: :btree
  add_index "post_translations", ["post_id"], name: "index_post_translations_on_post_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "post_type"
    t.decimal  "post_value"
    t.date     "published_at"
    t.boolean  "is_featured"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_translations", force: :cascade do |t|
    t.integer  "project_id", null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  add_index "project_translations", ["locale"], name: "index_project_translations_on_locale", using: :btree
  add_index "project_translations", ["project_id"], name: "index_project_translations_on_project_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resource_translations", force: :cascade do |t|
    t.integer  "resource_id", null: false
    t.string   "locale",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "title"
    t.text     "body"
  end

  add_index "resource_translations", ["locale"], name: "index_resource_translations_on_locale", using: :btree
  add_index "resource_translations", ["resource_id"], name: "index_resource_translations_on_resource_id", using: :btree

  create_table "resources", force: :cascade do |t|
    t.string   "submitter"
    t.string   "position"
    t.string   "orgname"
    t.string   "submitter_email"
    t.string   "submitter_phone"
    t.string   "mepi_project"
    t.string   "mepi_project_number"
    t.boolean  "focus_women"
    t.boolean  "focus_youth"
    t.datetime "published_at"
    t.integer  "nid"
    t.integer  "number_pages"
    t.string   "doc_types"
    t.integer  "materialtype_id"
    t.string   "website"
    t.string   "partner_orgs"
    t.string   "presenter"
    t.string   "training_event"
    t.datetime "event_date"
    t.integer  "language"
    t.integer  "tnid"
    t.integer  "organization_id"
    t.integer  "pid"
    t.integer  "pnid"
    t.integer  "tid"
    t.integer  "series_id"
    t.integer  "project_id"
    t.boolean  "is_featured"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string   "search_term"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "technicalarea_ids"
    t.string   "targetgroup_ids"
    t.string   "organization_ids"
  end

  create_table "searches_organizations", force: :cascade do |t|
    t.integer  "search_id"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "searches_series", force: :cascade do |t|
    t.integer  "search_id"
    t.integer  "series_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches_targetgroups", force: :cascade do |t|
    t.integer  "search_id"
    t.integer  "targetgroup_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "searches_technicalareas", force: :cascade do |t|
    t.integer  "search_id"
    t.integer  "technicalarea_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "series", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "nid"
    t.integer  "pnid"
    t.integer  "language"
    t.integer  "tnid"
    t.integer  "pid"
    t.integer  "tid"
    t.boolean  "is_series"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series_translations", force: :cascade do |t|
    t.integer  "series_id",  null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.text     "body"
  end

  add_index "series_translations", ["locale"], name: "index_series_translations_on_locale", using: :btree
  add_index "series_translations", ["series_id"], name: "index_series_translations_on_series_id", using: :btree

  create_table "site_document_translations", force: :cascade do |t|
    t.integer  "site_document_id", null: false
    t.string   "locale",           null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "name"
  end

  add_index "site_document_translations", ["locale"], name: "index_site_document_translations_on_locale", using: :btree
  add_index "site_document_translations", ["site_document_id"], name: "index_site_document_translations_on_site_document_id", using: :btree

  create_table "site_documents", force: :cascade do |t|
    t.string   "documentable_type"
    t.integer  "documentable_id"
    t.integer  "nid"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
  end

  create_table "site_images", force: :cascade do |t|
    t.string   "name"
    t.string   "imageable_type"
    t.integer  "imageable_id"
    t.boolean  "is_logo"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "specialties", force: :cascade do |t|
    t.integer  "nid"
    t.integer  "trainer_id"
    t.integer  "technicalarea_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.string   "personname"
    t.string   "position"
    t.integer  "organization_id"
    t.string   "neworg"
    t.string   "email"
    t.string   "phone"
    t.integer  "project_id"
    t.string   "newproj"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "tag_translations", force: :cascade do |t|
    t.integer  "tag_id",     null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  add_index "tag_translations", ["locale"], name: "index_tag_translations_on_locale", using: :btree
  add_index "tag_translations", ["tag_id"], name: "index_tag_translations_on_tag_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags_resources", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "resource_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "targetgroup_translations", force: :cascade do |t|
    t.integer  "targetgroup_id", null: false
    t.string   "locale",         null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "name"
  end

  add_index "targetgroup_translations", ["locale"], name: "index_targetgroup_translations_on_locale", using: :btree
  add_index "targetgroup_translations", ["targetgroup_id"], name: "index_targetgroup_translations_on_targetgroup_id", using: :btree

  create_table "targetgroups", force: :cascade do |t|
    t.integer  "tid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "targetgroups_resources", force: :cascade do |t|
    t.integer  "targetgroup_id"
    t.integer  "resource_id"
    t.integer  "tid"
    t.integer  "nid"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "technicalarea_translations", force: :cascade do |t|
    t.integer  "technicalarea_id", null: false
    t.string   "locale",           null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "name"
  end

  add_index "technicalarea_translations", ["locale"], name: "index_technicalarea_translations_on_locale", using: :btree
  add_index "technicalarea_translations", ["technicalarea_id"], name: "index_technicalarea_translations_on_technicalarea_id", using: :btree

  create_table "technicalareas", force: :cascade do |t|
    t.integer  "tid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "technicalareas_resources", force: :cascade do |t|
    t.integer  "technicalarea_id"
    t.integer  "resource_id"
    t.integer  "tid"
    t.integer  "nid"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "titles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainers", force: :cascade do |t|
    t.integer  "nid"
    t.integer  "title"
    t.string   "name_first"
    t.string   "name_last"
    t.integer  "gender"
    t.integer  "based_in"
    t.string   "country"
    t.string   "city"
    t.boolean  "mepi_training"
    t.boolean  "mepi_trained"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.text     "experience"
    t.integer  "specialty_id"
    t.text     "additional"
    t.text     "experience_arabic"
    t.string   "name_first_ar"
    t.string   "name_last_ar"
    t.string   "specialty"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "trainers_countries", force: :cascade do |t|
    t.integer  "country_id"
    t.integer  "nid"
    t.integer  "trainer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainers_languages", force: :cascade do |t|
    t.integer  "trainlanguage_id"
    t.integer  "trainer_id"
    t.integer  "nid"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "trainlanguages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
