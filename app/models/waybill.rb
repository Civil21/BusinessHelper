class Waybill < ApplicationRecord
  belongs_to :car
  belongs_to :employee
  belongs_to :client

  belongs_to :place_of_dispatch, class_name: 'Place'
  belongs_to :place_of_arrival, class_name: 'Place'

  has_many :cargo_waybills, inverse_of: :waybill
  accepts_nested_attributes_for :cargo_waybills, allow_destroy: true, reject_if: :all_blank
  has_many :cargos, through: :cargo_waybills

  has_many :employee_comments, as: :object, dependent: :destroy

  enum state: %w[
    Активна
    Виконана
  ]
end
