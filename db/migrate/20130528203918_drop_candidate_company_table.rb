class DropCandidateCompanyTable < ActiveRecord::Migration
  def up
    drop_table :candidate_companies
  end
  def down

  end
end
