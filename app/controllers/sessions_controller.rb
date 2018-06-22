class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by email: params[:login][:email]
    
    if user && user.active?
      if user.authenticate(params[:login][:password])
        sessions[:user_id] = user.id
        redirect_to root_path, notice: 'Successfully logged in'
      else
        flash.now.alert = 'Invalid email or password'
      end
    else
      redirect_to root_path, alert: 'Account not activated.'
    end
  end
  
end