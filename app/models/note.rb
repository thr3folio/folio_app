class Note < ActiveRecord::Base
  attr_accessible :description, :date, :job_id
  belongs_to :job
end
