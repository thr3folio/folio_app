class AgencyClient < ActiveRecord::Base
  attr_accessible :agency_id, :client_id
  belongs_to :agency
  belongs_to :client
end
