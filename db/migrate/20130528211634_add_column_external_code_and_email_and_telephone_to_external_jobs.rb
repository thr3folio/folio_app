class AddColumnExternalCodeAndEmailAndTelephoneToExternalJobs < ActiveRecord::Migration
  def change
    add_column :external_jobs, :external_code, :string
    add_column :external_jobs, :email, :string
    add_column :external_jobs, :telephone, :string
  end

  def down
    remove_column :external_jobs, :contact
  end
end
