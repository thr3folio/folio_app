class Candidate < ActiveRecord::Base
  attr_accessible :title, :industry, :years_experience, :bio, :company_id
  belongs_to :company
  belongs_to :user
  has_many :candidate_recruiters
  has_many :candidate_jobs
  has_many :recruiter_notes
  has_many :hiring_manager_notes

  validates :title, presence: :true
  validates :industry, presence: :true
  validates :bio, presence: :true
  validates :company, presence: :true

  def full_name
    self.user.full_name
  end
end
