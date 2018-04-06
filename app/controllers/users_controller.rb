class UsersController < ApplicationController
  before_action :require_user, except: [:index,:show,:new,:create]


  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
          session[:user_id] = @user.id
          flash[:success] = "New user created"
          redirect_to user_path(@user)
      else
       render 'new'
      end
  end

  def edit
    @user = User.find(params[:id])
    user_authenticate
  end

  def update
    @user = User.find(params[:id])
    user_authenticate
      if @user.update(user_params)
       flash[:success]="User successfully updated"
       redirect_to user_path(@user)
      else
        render 'edit'
      end
  end


  private

  def user_params
    params.require(:user).permit(:name, :username,:password,:password_confirmation)
  end

  def user_authenticate
   if @user!=current_user
    flash[:danger] = "You are not allowed to perform this action"
     redirect_to root_path
   end

  end

end
