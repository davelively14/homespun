class RegistrationsController < Devise::RegistrationsController

  def edit
    @addresses = Address.where(user_id: current_user.id)
  end

  protected

  def after_update_path_for(resource)
    user_path(resource)
  end
end