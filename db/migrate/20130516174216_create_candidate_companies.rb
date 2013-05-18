class CreateCandidateCompanies < ActiveRecord::Migration
  def change
    create_table :candidate_companies do |t|
      t.integer :candidate_id
      t.integer :company_id
    end
  end
end
