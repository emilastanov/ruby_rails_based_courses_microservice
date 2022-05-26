class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.belongs_to :course
      t.integer :skill_id

    end
  end
end
