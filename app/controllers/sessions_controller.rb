class SessionsController < ApplicationController
  def new

  end
  def create
    user=User.find_by(username:params[:session_request_form][:username])
    if user && user.authenticate(params[:session_request_form][:password]) #remember password is encrypted so chef.authenticate() is necessary
      session[:user_id] = user.id
      flash[:success] = "You have sucessfully loged in"
      redirect_to user_path(user)
    else
      flash.now[:danger] = "Incorrect login information"
      render 'new'
    end

  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully Loged out"
    redirect_to root_path
  end


end
