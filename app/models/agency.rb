class Agency < ActiveRecord::Base
  attr_accessible :industry, :location, :name
  has_many :agency_clients
  has_many :recruiters, :through => :recruiter_attributes
  has_many :clients, :through => :agency_clients
  has_many :agency_recruiters
  has_many :client_jobs
  has_many :jobs, :through => :client_jobs
  has_many :recruiter_attributes
  has_many :recruiters

  validates :industry, presence: :true
  validates :location, presence: :true
  validates :name, presence: :true
end
