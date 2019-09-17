class SessionsController < ApplicationController
  def new
    @user = user.new
  end

  def create
    @user = User.find(params[:user_name])
    if @user && @user.authenticate(params[:password])
      sessions[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to signin_path
    end

    def destroy
      session.clear
      redirect_to '/'
  end

end
