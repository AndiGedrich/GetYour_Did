class Technician < ActiveRecord::Base
  has_one :salon
  has_many :appointments
  has_many :reviews
  has_many :services
  has_many :categories, through: :services
  has_many :users, through: :appointments
end
