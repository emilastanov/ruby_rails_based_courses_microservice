class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.integer :profile, null: false
      t.belongs_to :course, null: false
      t.decimal :pass_percentage, default: 0
      t.string :state, default: :in_process
      t.timestamps
    end
  end
end
