class Salon < ActiveRecord::Base
  has_many :users
  has_many :appointments, through: :users
  has_many :reviews, through: :users
end
