class Note < ActiveRecord::Base
  attr_accessible :description, :job_id
  belongs_to :job

  validates :description, presence: :true
  validates :job, presence: :true
end
