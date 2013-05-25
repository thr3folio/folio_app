class RecruiterNote < ActiveRecord::Base
  belongs_to :note
  belongs_to :recruiter
  belongs_to :candidate
end
