# frozen_string_literal: true

class PlaceComponent < ViewComponent::Base
  def initialize(place:)
    @place = place
  end
end
