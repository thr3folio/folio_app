class CreateRecruiterNotes < ActiveRecord::Migration
  def change
    create_table :recruiter_notes do |t|
      t.integer :candidate_id
      t.integer :note_id
      t.integer :recruiter_id
    end
  end
end
