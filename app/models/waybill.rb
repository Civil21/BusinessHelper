class Waybill < ApplicationRecord
  belongs_to :car
  belongs_to :employee
  belongs_to :client

  belongs_to :place_of_dispatch, class_name: 'place'
  belongs_to :place_of_arrival, class_name: 'place'

  has_many :cargo_waybills
  has_many :cargos, through: :cargo_waybills
end
