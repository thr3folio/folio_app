class CandidateAttribute < ActiveRecord::Base
  attr_accessible :title, :industry, :years_experience, :bio, :company_id, :candidate_id
  belongs_to :candidate
  belongs_to :company
  validates :title, presence: :true
  validates :industry, presence: :true
  validates :bio, presence: :true
  validates :company, presence: :true
  validates :candidate_id, presence: :true
end
