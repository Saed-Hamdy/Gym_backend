class Api::V1::AccessController <  ActionController::Base
  def login
    # login form
    render("api/v1/login")
  end
def menu
	render("api/v1/menu")
end
  # def attempt_login
  #   if params[:username].present? && params[:password].present?
  #     found_user = AdminUser.where(:username => params[:username]).first
  #     if found_user
  #       authorized_user = found_user.authenticate(params[:password])
  #     end
  #   end

  #   if authorized_user
  #     session[:user_id] = authorized_user.id
  #     flash[:notice] = "You are now logged in."
  #     redirect_to(admin_path)
  #   else
  #     flash.now[:notice] = "Invalid username/password combination."
  #     render('login')
  #   end

  # end


 def attempt_login
  if params[:username].present? && params[:password].present?
      found_user = User.where(:Fname => params[:username]).first
      # if found_user
      #   authorized_user = found_user.authenticate(params[:password])
      # end
      logger.debug("****************************testiiiiiiiiiiiing  ***************************")
     # render json: @found_user.password
      if found_user && found_user.password == params[:password]
      	# redirect_to("/api/v1/access/menu")
      		redirect_to(api_v1_access_menu_path)

      else 
      	render("api/v1/login")
      end
   end 
end

def logout
    session[:user_id] = nil
    # flash[:notice] = 'Logged out'
    redirect_to(api_v1_access_login_path)
  end
end
