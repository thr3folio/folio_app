class HiringManagerAttribute < ActiveRecord::Base
  attr_accessible :title, :company_id, :hiring_manager_id
  belongs_to :hiring_manager
  belongs_to :client
  has_many :hiring_manager_notes
  has_many :jobs
  belongs_to :company
  belongs_to :user

  validates :title, presence: :true
  validates :company, presence: :true
  validates :hiring_manager_id, presence: :true

  def full_name
    self.user.full_name
  end

  def name_with_initial
    "#{self.user.first_name.first}. #{self.last_name}"
  end
end
