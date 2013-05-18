class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :industry
      t.integer :years_experience
      t.string :email
      t.text :bio
      t.integer :company_id
    end
  end
end
