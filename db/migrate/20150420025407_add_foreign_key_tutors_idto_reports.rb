class AddForeignKeyTutorsIdtoReports < ActiveRecord::Migration
  def change
  	add_foreign_key(:reports, :tutors)
  end
end
