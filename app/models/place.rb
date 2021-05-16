class Place < ApplicationRecord
  has_many :employee_comments, as: :object, dependent: :destroy

  # has_many :waybills
  # як пункт відправлення і пункт прийому окремо

  # геолокація
  geocoded_by :address, if: :address_changed?
  after_validation :geocode

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  def address
    [street, building_number, city, state, country].compact.join(', ')
  end

  def address=(text)
    result = text.split(', ')
    case result.count
    when 5
      self.street, self.building_number, self.city, self.state, self.country = result
    when 4
      self.street, self.city, self.state, self.country = result
    when 3
      self.city, self.state, self.country = result
    end
  end

  def name
    address
  end
end
