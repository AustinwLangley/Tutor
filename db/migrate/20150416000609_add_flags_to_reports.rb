class AddFlagsToReports < ActiveRecord::Migration
  def change
  	add_column :reports, :director_flag, :boolean 
  	add_column :reports, :parent_flag, :boolean
  end
end
