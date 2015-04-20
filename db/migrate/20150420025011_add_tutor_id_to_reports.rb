class AddTutorIdToReports < ActiveRecord::Migration
  def change
    add_column :reports, :tudor_id, :integer
  end
end
