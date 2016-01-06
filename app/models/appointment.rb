class Appointment < ActiveRecord::Base
  has_one :technician
  has_one :user
  has_one :service
  has_one :salon, through: :technician

  extend TimeSplitter::Accessors
  split_accessor :starts_at
end
