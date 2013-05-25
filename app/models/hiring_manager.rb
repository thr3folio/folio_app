class HiringManager < ActiveRecord::Base

  belongs_to :client
  has_many :hiring_manager_notes
  has_many :jobs
  belongs_to :company

  def full_name
    return "#{first_name} #{last_name}"
  end
end
