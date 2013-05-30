class CandidateRecruiter < ActiveRecord::Base
  attr_accessible :candidate_id, :recruiters_id
  belongs_to :recruiter
  belongs_to :candidate
  # has_many :candidates, :through => :candidate_recruiter
end
