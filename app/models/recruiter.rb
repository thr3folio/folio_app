class Recruiter < ActiveRecord::Base
  attr_accessible :title, :company_id

  has_many :recruiter_notes
  has_many :candidate_recruiters
  has_many :job_recruiters
  has_many :agency_recruiters
  belongs_to :company
  belongs_to :user

  validates :title, presence: :true
  validates :company, presence: :true
end
