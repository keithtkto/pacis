class SessionsController < ApplicationController
  def new
  end
  # reset_session

  # def reset_session
  #     if session && session.respond_to?(:destroy)
  #       session.destroy
  #     else
  #       self.session = {}
  #     end
  #     @env['action_dispatch.request.flash_hash'] = nil
  #   end


  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      if user.authenticate( user.first_name[0] + user.last_name[0] + "123" )
        redirect_to company_user_new_pw_path(user.company_id,user.id)
      else
        session[:user_id] = user.id
        redirect_to company_users_path(user.company_id), notice: "Logged in!"
      end
    else
      flash.now.alert = "invalid login credentials - try again!"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out!"
  end



end
