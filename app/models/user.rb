class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation

  has_secure_password

  has_one :candidate
  has_one :hiring_manager
  has_one :recruiter

  validates :email, presence: true, uniqueness: true
end
