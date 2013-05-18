class CreateHiringManagers < ActiveRecord::Migration
  def change
    create_table :hiring_managers do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.integer :company_id
      t.string :email
    end
  end
end
