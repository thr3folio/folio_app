class CreateExternalJobs < ActiveRecord::Migration
  def change
    create_table :external_jobs do |t|
      t.string :description
      t.string :contact
      t.integer :hiring_manager_id
      t.integer :job_id

      t.timestamps
    end
  end
end
