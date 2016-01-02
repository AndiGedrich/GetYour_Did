class Salon < ActiveRecord::Base
  has_many :technicians
  has_many :appointments, through: :technicians
  has_many :reviews, through: :technicians
end
