class Recruiter < ActiveRecord::Base
  attr_accessible :title, :agency_id, :user_id

  has_many :recruiter_notes
  has_many :candidate_recruiters
  has_many :job_recruiters
  has_many :agency_recruiters
  has_many :jobs, :through => :job_recruiters
  belongs_to :company
  belongs_to :user
  belongs_to :agency

  validates :title, presence: :true
  validates :agency, presence: :true
  validates :user, presence: :true

  def full_name
    self.user.full_name
  end
end
