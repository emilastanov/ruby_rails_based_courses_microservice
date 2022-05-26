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

ActiveRecord::Schema[7.0].define(version: 2022_05_26_112832) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.integer "estimated_time"
    t.integer "difficulty"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state"], name: "index_courses_on_state"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "profile"
    t.text "text"
    t.integer "mark_for_theory"
    t.integer "mark_for_practice"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_reviews_on_course_id"
  end

  create_table "skills", force: :cascade do |t|
    t.bigint "course_id"
    t.integer "skill_id"
    t.index ["course_id"], name: "index_skills_on_course_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer "profile", null: false
    t.bigint "course_id", null: false
    t.decimal "pass_percentage", default: "0.0"
    t.string "state", default: "in_process"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_students_on_course_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "course_id"
    t.string "task_type"
    t.json "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_tasks_on_course_id"
  end

end
