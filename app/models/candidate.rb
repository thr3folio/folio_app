class Candidate < ActiveRecord::Base
  belongs_to :company
  has_many :candidate_recruiters
  has_many :candidate_jobs
  has_many :recruiter_notes
  has_many :hiring_manager_notes

  def full_name
    return "#{first_name} #{last_name}"
  end
end
