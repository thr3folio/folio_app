class CreateCandidateRecruiters < ActiveRecord::Migration
  def change
    create_table :candidate_recruiters do |t|
      t.integer :candidate_id
      t.integer :recruiters_id
    end
  end
end
