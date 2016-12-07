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
      redirect_to feedbacks_url #:action => 'login'
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
      render "new"
    end    
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      #params.fetch(:user, {})
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
