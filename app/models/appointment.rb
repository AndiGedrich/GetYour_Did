class Appointment < ActiveRecord::Base
  belongs_to :technician
  has_one :user
  has_one :service

  extend TimeSplitter::Accessors
  split_accessor :starts_at
end
