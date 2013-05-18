class CreateJobCompanies < ActiveRecord::Migration
  def change
    create_table :job_companies do |t|
      t.integer :job_id
      t.integer :company_id
    end
  end
end
