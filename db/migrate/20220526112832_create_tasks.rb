class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.belongs_to :course
      t.string :task_type
      t.json :data
      t.timestamps
    end
  end
end
