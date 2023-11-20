class RegistrationsController < Devise::RegistrationsController
  # This method overrides the signup and account_update params shipped with Devise
  # to accept the name attribute added to the migration user table.

  private

  def signup_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end
end
