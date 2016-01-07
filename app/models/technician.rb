class Technician < ActiveRecord::Base
  before_save { self.email = email.downcase }
  has_secure_password

  validates :email, presence: true, uniqueness: { case_sensitive: false}

  belongs_to :salon
  has_many :appointments
  has_many :reviews
  has_many :services
  has_many :categories, through: :services
  has_many :users, through: :appointments
end
