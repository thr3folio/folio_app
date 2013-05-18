class RemoveJobIdAndCandidateIdFromNotes < ActiveRecord::Migration
  def change
    remove_column :notes, :job_id
    remove_column :notes, :candidate_id
  end
end
