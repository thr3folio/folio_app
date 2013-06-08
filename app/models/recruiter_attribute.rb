class RecruiterAttribute < ActiveRecord::Base
  attr_accessible :title, :agency_id, :recruiter_id
  belongs_to :recruiter
  belongs_to :agency

  validates :title, presence: :true
  validates :agency, presence: :true
  validates :recruiter, presence: :true
end
