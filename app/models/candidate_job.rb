class CandidateJob < ActiveRecord::Base
  attr_accessible :candidate_id, :job_id
  belongs_to :candidate
  belongs_to :job
end
