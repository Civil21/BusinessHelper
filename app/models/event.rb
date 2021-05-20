class Event < ApplicationRecord
  has_many :employee_comments, as: :object, dependent: :destroy
  has_many :event_employees
  has_many :employees, through: :event_employees
  has_many :event_cars
  has_many :cars, through: :event_cars
  enum event_status: {
    'state 1' => 0,
    'state 2' => 1,
    'state 3' => 2
  }
  enum event_type: {
    'type 1' => 0,
    'type 2' => 1,
    'type 3' => 2
  }
end
