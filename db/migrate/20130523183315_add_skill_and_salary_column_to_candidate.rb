class AddSkillAndSalaryColumnToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, skills:string
    add_column :candidates, salary:string
  end
end
