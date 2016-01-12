class Appointment < ActiveRecord::Base
  belongs_to :user
  has_one :service

  extend TimeSplitter::Accessors
  split_accessor :starts_at
end
