class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :redirect_to_profile

  private

  def redirect_to_profile
    if user_signed_in? && !controller_name == 'users'
      redirect_to user_path(current_user)
    end
  end
end
