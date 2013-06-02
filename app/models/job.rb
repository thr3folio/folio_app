class Job < ActiveRecord::Base
  attr_accessible :title, :description, :location, :email, :url, :salary, :due_date
  has_many :hiring_manager_jobs
  has_many :candidate_jobs
  has_many :client_jobs
  has_many :job_recruiters
  has_one :external_job
  has_many :candidates, :through => :candidate_jobs
  has_many :client, :through => :client_jobs

  validates :title, presence: :true
  validates :description, presence: :true
  validates :location, presence: :true
  validates :email, presence: :true
  validates_format_of :email,
:with => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i

  def method_name

  end
end
