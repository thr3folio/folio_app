class RenameColumnRecruitersIdToRecruiterIdForCandidateRecruitersTable < ActiveRecord::Migration
  def change
    rename_column :candidate_recruiters, :recruiters_id, :recruiter_id
  end
end
