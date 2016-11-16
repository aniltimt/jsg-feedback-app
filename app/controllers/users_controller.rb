class UsersController < ApplicationController

  def index
    @users = User.all 
  end

  def new
    @user = User.new 
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
      redirect_to :action => 'login'
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
      render "new"
    end    
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      #params.fetch(:user, {})
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
