class ClientJob < ActiveRecord::Base
  attr_accessible :client_id, :job_id
  belongs_to :client
  belongs_to :job
end
