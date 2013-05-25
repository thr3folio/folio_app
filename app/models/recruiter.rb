class Recruiter < ActiveRecord::Base

  has_many :recruiter_notes
  has_many :candidate_recruiters
  has_many :job_recruiters
  has_many :agency_recruiters
  belongs_to :company

  def full_name
    return "#{first_name} #{last_name}"
  end
end
