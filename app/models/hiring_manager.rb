class HiringManager < ActiveRecord::Base
  attr_accessible :title, :company_id
  belongs_to :client
  has_many :hiring_manager_notes
  has_many :jobs
  belongs_to :company
  belongs_to :user

  validates :title, presence: true
  validates :company, presence: true
end
