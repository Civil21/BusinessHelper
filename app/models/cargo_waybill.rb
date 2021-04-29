class CargoWaybill < ApplicationRecord
  belongs_to :waybill
  belongs_to :cargo
end
