class CandidateJob < ActiveRecord::Base
  attr_accessible :candidate_id, :job_id

  belongs_to :candidate
  belongs_to :job

  validates :candidate, presence: :true
  validates :job, presence: :true
  validates_uniqueness_of :job_id, scope: :candidate_id
end
