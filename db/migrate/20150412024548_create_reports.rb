class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.text :what_was_covered
      t.text :performance
      t.text :assignment

      t.timestamps null: false
    end
  end
end
