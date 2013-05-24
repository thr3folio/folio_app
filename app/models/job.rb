class Job < ActiveRecord::Base
  has_many :hiring_manager_jobs
  has_many :candidate_jobs
  has_many :client_jobs
  has_many :job_recruiters
  has_one :external_job
  has_many :candidates, :through => :candidate_jobs
end
