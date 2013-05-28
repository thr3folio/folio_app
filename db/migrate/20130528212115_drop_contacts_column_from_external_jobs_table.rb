class DropContactsColumnFromExternalJobsTable < ActiveRecord::Migration
  def change
    remove_column :external_jobs, :contact
  end
end
