class Service < ActiveRecord::Base

  belongs_to :provider
  has_many :reservations
  has_many :comments

end
