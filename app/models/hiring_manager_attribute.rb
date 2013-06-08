class HiringManagerAttribute < ActiveRecord::Base
  attr_accessible :title, :company_id, :hiring_manager_id
  belongs_to :hiring_manager
  belongs_to :company

  validates :title, presence: :true
  validates :company, presence: :true
  validates :hiring_manager_id, presence: :true
end
