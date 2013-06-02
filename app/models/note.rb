class Note < ActiveRecord::Base
  attr_accessible :description, :date, :job_id
  belongs_to :job

  validates :description, presence: true
  validates :date, presence: true
  validates :job, presence: true
end
