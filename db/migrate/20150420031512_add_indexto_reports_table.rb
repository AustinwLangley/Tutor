class AddIndextoReportsTable < ActiveRecord::Migration
  def change
  	add_index "reports", ["tutor_id"], name: "index_reports_on_tutor_id"
  end
end
