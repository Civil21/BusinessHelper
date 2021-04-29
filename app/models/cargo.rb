class Cargo < ApplicationRecord
  has_many :cargo_waybills
  has_many :waybills, through: :cargo_waybills
end
