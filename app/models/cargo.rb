class Cargo < ApplicationRecord
  has_many :cargo_waybills
  has_many :waybills, through: :cargo_waybills

  enum state: [
    'state 1',
    'state 2',
    'state 3'
  ]
end
