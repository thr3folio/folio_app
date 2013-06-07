class RemoveUserIdColumnFromAttributeTables < ActiveRecord::Migration
  def change
    remove_column :candidate_attributes, :user_id
    remove_column :hiring_manager_attributes, :user_id
    remove_column :recruiter_attributes, :user_id
  end
end
