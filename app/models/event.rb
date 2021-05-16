class Event < ApplicationRecord
  has_many :employee_comments, as: :object, dependent: :destroy
  enum event_status: [
    'state 1',
    'state 2',
    'state 3'
  ]
  enum event_type: [
    'type 1',
    'type 2',
    'type 3'
  ]
end
