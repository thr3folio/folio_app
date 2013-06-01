class Candidate < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :title, :industry, :years_experience, :email, :bio, :company_id
  belongs_to :company
  belongs_to :user
  has_many :candidate_recruiters
  has_many :candidate_jobs
  has_many :recruiter_notes
  has_many :hiring_manager_notes

end
