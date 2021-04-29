class Client < ApplicationRecord
  has_many :employee_comments, as: :object, dependent: :destroy
  has_many :waybills
end
