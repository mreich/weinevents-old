class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new (params[:user])
    if @user.save 
      redirect_to events_path, :notice => 'Ihr Anmeldung war erfolgreich.'
    else
      render :action => 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[id])
    if @user.update_attributes(params[:user])
      redirect_to events_path, notice => 'Ihr Profil wurde erfolgreich geaendert.'
    else
      render :action => 'edit'
    end
  end
end
