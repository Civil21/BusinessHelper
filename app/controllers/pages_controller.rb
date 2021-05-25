class PagesController < ApplicationController
  layout 'layouts/pages_application'
  def index; end

  def check_waybill
    if params[:id]&.blank?
      flash_block('Потрібно ввести номер вантажної накладної', 'warning')
      redirect_to request.referer + '#waybill_info'
    elsif @waybill = Waybill.find_by_id(params[:id])
    else
      flash_block('Вантажної накладної за вказаним номером не існує', 'warning')
      redirect_back(fallback_location: root_path)
    end
  end
end
