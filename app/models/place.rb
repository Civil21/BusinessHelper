class Place < ApplicationRecord
  has_many :employee_comments, as: :object, dependent: :destroy

  # has_many :waybills
  # як пункт відправлення і пункт прийому окремо
end
