class RenameColumnStudentIdInTableReportstoStudentNflId < ActiveRecord::Migration
  def change
  	rename_column(:reports, :student_id, :student_nfl_id)
  end
end
