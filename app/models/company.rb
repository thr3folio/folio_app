class Company < ActiveRecord::Base
  attr_accessible :name, :industry, :location

  has_many :candidates
  has_many :recruiters
  has_many :hiring_managers

  validates :name, presence: :true, uniqueness: :true
  validates :industry, presence: :true
  validates :location, presence: :true
end
