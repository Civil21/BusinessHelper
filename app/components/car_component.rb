# frozen_string_literal: true

class CarComponent < ViewComponent::Base
  def initialize(car:)
    @car = car
  end

end
