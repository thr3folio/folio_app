class HiringManager < ActiveRecord::Base
  belongs_to :company
  has_many :hiring_manager_notes

  def full_name
    return "#{first_name} #{last_name}"
  end
end
