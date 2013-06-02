class JobRecruiter < ActiveRecord::Base
  attr_accessible :job_id, :recruiter_id
  belongs_to :job
  belongs_to :recruiter

  validates :job, presence: true
  validates :recruiter, presence: true
end
