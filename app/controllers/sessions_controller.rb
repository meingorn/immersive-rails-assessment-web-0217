class SessionsController < ApplicationController

  def new
    @user = User.new
    @users = User.all
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user
      session[:user_id] = @user.id
    else
      flash.now[:notice] = 'nope'
    end
  end

  def destroy
    session[:account_id] = nil
  end

end
