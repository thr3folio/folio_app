class HiringManager < User
  has_one :hiring_manager_attribute
  belongs_to :client
  has_many :hiring_manager_notes
  has_many :jobs
end
