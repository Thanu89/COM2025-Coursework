class RegistrationsController < Devise::RegistrationsController
  protected
private

  def sign_up_params
    params.require(:account).permit(:email, :password, :password_confirmation, :name)
  end

  def account_update_params
    params.require(:account).permit(:email, :password, :password_confirmation, :current_password, :name)
  end
end