class AddForeignKeyTutors < ActiveRecord::Migration
  def change
  	add_foreign_key(:reports, :tutors)
  end

end
