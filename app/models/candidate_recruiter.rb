class CandidateRecruiter < ActiveRecord::Base
  belongs_to :recruiter
  belongs_to :candidate
  # has_many :candidates, :through => :candidate_recruiter
end
