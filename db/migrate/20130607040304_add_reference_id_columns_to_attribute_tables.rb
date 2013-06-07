class AddReferenceIdColumnsToAttributeTables < ActiveRecord::Migration
  def change
    add_column :candidate_attributes, :candidate_id, :integer
    add_column :hiring_manager_attributes, :hiring_manager_id, :integer
    add_column :recruiter_attributes, :recruiter_id, :integer
  end
end
