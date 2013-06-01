class HiringManager < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :title, :company_id, :email
  belongs_to :client
  has_many :hiring_manager_notes
  has_many :jobs
  belongs_to :company
  belongs_to :user

  def full_name
    return "#{first_name} #{last_name}"
  end
end
