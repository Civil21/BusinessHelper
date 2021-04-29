# frozen_string_literal: true

class CargoComponent < ViewComponent::Base
  def initialize(cargo:)
    @cargo = cargo
  end

end
