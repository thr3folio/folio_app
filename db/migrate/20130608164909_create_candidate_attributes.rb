class CreateCandidateAttributes < ActiveRecord::Migration
  def change
    create_table :candidate_attributes do |t|
      t.string :title
      t.string :industry
      t.string :years_experience
      t.string :bio
      t.string :company_id
      t.string :skills
      t.string :location
      t.integer :candidate_id

      t.timestamps
    end
  end
end
