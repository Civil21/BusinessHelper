# frozen_string_literal: true

class WaybillComponent < ViewComponent::Base
  def initialize(waybill:)
    @waybill = waybill
  end
end
