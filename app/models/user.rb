class User < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true, uniqueness: { case_sensitive: false}

  has_many :appointments
  has_many :reviews
  has_many :technicians, through: :appointments
end
