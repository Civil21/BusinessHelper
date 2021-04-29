class Event < ApplicationRecord
  has_many :employee_comments, as: :object, dependent: :destroy
end
