class ClientJob < ActiveRecord::Base
  attr_accessible :client_id, :job_id
  belongs_to :client
  belongs_to :job

  validates :client, presences: true
  validates :job, presences: true
end
