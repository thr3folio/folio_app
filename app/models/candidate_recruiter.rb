class CandidateRecruiter < ActiveRecord::Base
  attr_accessible :candidate_id, :recruiter_id

  belongs_to :recruiter
  belongs_to :candidate

  validates :candidate, presence: :true
  validates :recruiter, presence: :true
end
