class DeleteJobCompaniesTable < ActiveRecord::Migration
  def down
     drop_table :job_companies
  end
end
