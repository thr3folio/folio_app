class CreateHiringManagerNotes < ActiveRecord::Migration
  def change
    create_table :hiring_manager_notes do |t|
      t.integer :candidate_id
      t.integer :note_id
      t.integer :hiring_manager_id
    end
  end
end
