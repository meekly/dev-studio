class PrivateController < ApplicationController
  layout 'admin'
  before_action :confirm_logged_in, :except => [:login, :attempt_login]
	before_action :set_logged_in, :except => [:login, :attempt_login]  

  def login
		@logged_in = false
  end
  
  def logout
    session[:admin_user_id] = nil
		@logged_in = false
		flash[:notice] = 'До встречи'
    redirect_to private_login_path
  end
  
  def attempt_login
    admin = login_params
    found_user = AdminUser.where(:login => admin[:login]).first
    if found_user
      authorized_user  = found_user.authenticate(admin[:password])
    end

    if authorized_user
      session[:admin_user_id] = authorized_user.id
      flash[:notice] = 'Вы успешно авторизовались'
			@logged_in = true
      redirect_to(private_main_path)
    else
      flash.now[:notice] = 'Ty debil'
      render('login')
    end
  end

  def main
  end

  def projects
  end

  def public
  end

  private
  
  def login_params
    params.require(:admin_user).permit(:login, :password)
  end


end
