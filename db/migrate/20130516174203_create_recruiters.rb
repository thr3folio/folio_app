class CreateRecruiters < ActiveRecord::Migration
  def change
    create_table :recruiters do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.integer :company_id
      t.string :email
    end
  end
end
