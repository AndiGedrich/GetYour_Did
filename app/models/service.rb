class Service < ActiveRecord::Base
  has_many :users
  has_many :appointments
  belongs_to :category

end
