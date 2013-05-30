class ExternalJob < ActiveRecord::Base
  attr_accessible :contact, :description, :hiring_manager_id, :job_id, :external_code, :email, :telephone
  belongs_to :job
  belongs_to :hiring_manager
end
