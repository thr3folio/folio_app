class AddUserIdToHiringManager < ActiveRecord::Migration
  def change
    remove_column :hiring_managers, :first_name
    remove_column :hiring_managers, :last_name
    remove_column :hiring_managers, :email
    add_column :hiring_managers, :user_id, :integer
  end
end
