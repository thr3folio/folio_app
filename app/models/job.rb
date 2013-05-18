class Job < ActiveRecord::Base
  has_many :notes
  has_many :candidates, :through => :candidate_jobs
end
