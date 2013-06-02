class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation

  has_secure_password

  has_one :candidate
  has_one :hiring_manager
  has_one :recruiter

  validates :email, presence: :true, uniqueness: :true
  validates_format_of :email,
:with => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i
  validates :first_name, presence: :true
  validates :last_name, presence: :true

  def full_name
    return "#{first_name} #{last_name}"
  end
end
