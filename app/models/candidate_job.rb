class CandidateJob < ActiveRecord::Base
  attr_accessible :candidate_id, :job_id

  belongs_to :candidate
  belongs_to :job

  has_many :candidates, :through => :candidate_job
  validates :candidate, presence: :true
  validates :job, presence: :true
end
