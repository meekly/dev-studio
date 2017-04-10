class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	private

  def confirm_logged_in
    unless session[:admin_user_id]
      redirect_to private_login_path
    end
  end

	def set_logged_in
		@logged_in = true
	end

end
