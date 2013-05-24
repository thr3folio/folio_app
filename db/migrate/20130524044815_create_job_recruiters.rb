class CreateJobRecruiters < ActiveRecord::Migration
  def change
    create_table :job_recruiters do |t|
      t.integer :job_id
      t.integer :recruiter_id

      t.timestamps
    end
  end
end
