class Recruiter < User
  has_one :recruiter_attribute
  has_many :recruiter_notes
  has_many :candidate_recruiters
  has_many :job_recruiters
  has_many :agency_recruiters
  has_many :jobs, :through => :job_recruiters
  belongs_to :company


  validates :title, presence: :true
  validates :agency, presence: :true
  validates :user, presence: :true


end
