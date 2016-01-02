class Appointment < ActiveRecord::Base
  has_one :technician
  has_one :user
  has_one :service
  has_one :salon, through: :technician
end
