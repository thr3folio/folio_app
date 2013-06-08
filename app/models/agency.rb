class Agency < ActiveRecord::Base
  attr_accessible :industry, :location, :name
  has_many :agency_clients
  has_many :agency_recruiters


  validates :industry, presence: :true
  validates :location, presence: :true
  validates :name, presence: :true
end
