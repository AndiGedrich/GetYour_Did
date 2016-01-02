class Review < ActiveRecord::Base
  belongs_to :user
  has_one :technician
  has_one :salon, through: :technician
end
