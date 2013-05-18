class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :description
      t.string :date
      t.integer :job_id
      t.integer :candidate_id
    end
  end
end
