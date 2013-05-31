class Job < ActiveRecord::Base
  attr_accessible :title, :description, :location, :email, :url, :salary, :due_date
  has_many :hiring_manager_jobs
  has_many :candidate_jobs
  has_many :client_jobs
  has_many :job_recruiters
  has_one :external_job
  has_many :candidates, :through => :candidate_jobs
end
