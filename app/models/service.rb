class Service < ActiveRecord::Base
  has_many :technicians
  has_many :appointments
  belongs_to :category

end
