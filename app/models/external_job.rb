class ExternalJob < ActiveRecord::Base
  attr_accessible :contact, :description, :hiring_manager_id, :job_id, :external_code, :email, :telephone
  belongs_to :job
  belongs_to :hiring_manager

  validates :contact, presence: :true
  validates :description, presence: :true
  validates :hiring_manager, presence: :true
  validates :job, presence: :true
  validates :external_code, presence: :true
  validates :email, presence: :true
  validates :telephone, presence: :true
  validates_format_of :email,
:with => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i
end
