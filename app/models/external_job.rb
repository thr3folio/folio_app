class ExternalJob < ActiveRecord::Base
  attr_accessible :contact, :description, :hiring_manager_id, :job_id
  belongs_to :job
end
