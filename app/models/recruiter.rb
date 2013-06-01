class Recruiter < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :title, :company_id, :email
  has_many :recruiter_notes
  has_many :candidate_recruiters
  has_many :job_recruiters
  has_many :agency_recruiters
  belongs_to :company
  belongs_to :user

end
