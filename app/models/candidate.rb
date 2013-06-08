class Candidate < User
  has_one :candidate_attribute
  belongs_to :user
  has_many :candidate_recruiters
  has_many :candidate_jobs
  has_many :recruiter_notes
  has_many :hiring_manager_notes
  has_many :jobs, :through => :candidate_job
end
