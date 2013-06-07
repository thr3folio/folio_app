class RenameCandidateRecruiterHiringManagerTables < ActiveRecord::Migration
  def change
    rename_table :candidates, :candidate_attributes
    rename_table :hiring_managers, :hiring_manager_attributes
    rename_table :recruiters, :recruiter_attributes
  end
end
