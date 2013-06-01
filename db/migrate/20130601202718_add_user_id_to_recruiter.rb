class AddUserIdToRecruiter < ActiveRecord::Migration
  def change
    remove_column :recruiters, :first_name
    remove_column :recruiters, :last_name
    remove_column :recruiters, :email
    add_column :recruiters, :user_id, :integer
  end
end
