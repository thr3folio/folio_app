class AddDueDateAndSalaryRangeColumnsToJobsTable < ActiveRecord::Migration
  def change
    add_column :jobs, :salary, :string
    add_column :jobs, :due_date, :datetime
  end
end
