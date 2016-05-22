class Reservation < ActiveRecord::Base

  belongs_to :service
  belongs_to :user

  enum deliver_type: [ :pick_up, :drop_off ]
  enum status: [ :reserved, :active, :completed, :reviewed]
  enum pet_type: [:dog, :cat, :bird]
  enum pet_size: [:small, :medium, :big]

end
