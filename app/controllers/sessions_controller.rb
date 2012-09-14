class SessionsController < ApplicationController
def create
  if user = User.authenticate(params[:email], params[:password])
    session[:user_id] = user.id
    redirect_to root_path, :notice => t('sessions.create_success')
  else
    flash.now[:alert] = t('sessions.create_fail')
    render :action => 'new'
  end
end

def destroy
  reset_session
  redirect_to root_path, :notice => t('sessions.destroy_success')
end

end
