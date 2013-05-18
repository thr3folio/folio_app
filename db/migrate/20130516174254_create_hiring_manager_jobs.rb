class CreateHiringManagerJobs < ActiveRecord::Migration
  def change
    create_table :hiring_manager_jobs do |t|
      t.integer :hiring_manager_id
      t.integer :job_id
    end
  end
end
