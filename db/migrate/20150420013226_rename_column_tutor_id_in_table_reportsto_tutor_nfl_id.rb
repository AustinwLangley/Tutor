class RenameColumnTutorIdInTableReportstoTutorNflId < ActiveRecord::Migration
  def change
  	rename_column(:reports, :teacher_id, :tutor_nfl_id)
  end
end
