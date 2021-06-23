ActiveAdmin.register Waybill do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :employee_id, :car_id, :client_id, :place_of_dispatch_id, :dispatch_at, :place_of_arrival_id,
                :arrival_at, :state
  #
  # or
  #
  # permit_params do
  #   permitted = [:employee_id, :car_id, :client_id, :place_of_dispatch_id, :dispatch_at, :place_of_arrival_id, :arrival_at, :state]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
