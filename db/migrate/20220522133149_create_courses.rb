class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :estimated_time
      t.integer :difficulty
      t.string :state

      t.timestamps
    end
    add_index :courses, :state
  end
end
