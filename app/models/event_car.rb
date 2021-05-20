class EventCar < ApplicationRecord
  belongs_to :event
  belongs_to :car
end
