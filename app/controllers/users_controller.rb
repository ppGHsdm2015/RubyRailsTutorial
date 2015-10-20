class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create, :activate]
  
  def new
    @user = User.new
  end
  
  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.activation_needed_email(@user).deliver_later
      login(params[:user][:email], params[:user][:password])
      flash[:success] = 'Please check your email to activate your user account'
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def activate
    if @user = User.load_from_activation_token(params[:id])
      @user.activate!
      flash[:success] = 'User was successfully activated.'
      redirect_to log_in_path
    else
      flash[:warning] = 'Cannot activate this user.'
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :fullname, :organisation, :gender, :age)
  end
  
  
end