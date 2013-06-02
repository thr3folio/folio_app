class HiringManagerJob < ActiveRecord::Base
  attr_accessible :hiring_manager_id, :job_id
  belongs_to :hiring_manager
  belongs_to :job

  validates :hiring_manager, presence: :true
  validates :job, presence: :true
end
