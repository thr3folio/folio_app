class AddUserIdToCandidate < ActiveRecord::Migration
  def change
    remove_column :candidates, :first_name
    remove_column :candidates, :last_name
    remove_column :candidates, :email
    add_column :candidates, :user_id, :integer
  end
end
