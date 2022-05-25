class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :profile
      t.text :text
      t.integer :mark_for_theory
      t.integer :mark_for_practice
      t.belongs_to :course
      t.timestamps
    end
  end
end
