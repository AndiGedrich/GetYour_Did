class Service < ActiveRecord::Base
  has_many :technicians
  has_many :appointments
  has_one :category

end
