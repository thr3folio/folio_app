class DropClientJobsTable < ActiveRecord::Migration
  def up
  	drop_table :client_jobs
  	add_column :jobs, :client_id, :integer
  end

  def down
  	create_table :client_jobs do |t|
	    t.integer  "client_id"
  	  t.integer  "job_id"
    	t.timestamps
    end
    remove_column :jobs, :client_id
  end
end
