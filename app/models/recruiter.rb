class Recruiter < ActiveRecord::Base

  has_many :note_recruiters
  has_many :candidate_recruiters
  has_many :job_recruiters
  has_many :agency_recruiters

  def full_name
    return "#{first_name} #{last_name}"
  end
end
