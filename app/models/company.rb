class Company < ActiveRecord::Base
  attr_accessible :name

  has_many :candidates
  has_many :recruiters
  has_many :hiring_managers
end
