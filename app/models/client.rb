class Client < ActiveRecord::Base
  attr_accessible :industry, :location, :name
  has_many :client_jobs
  has_many :agency_clients
  has_many :jobs, :through => :client_jobs
end
