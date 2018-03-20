class SessionsController < ApplicationController

  def destroy
    reset_session

    flash[:success] = "You are now logged out!"

    redirect_to root_path
  end

  def new
    # We don't need any variables in here because we don't add to the database, only session
  end

  def create
    @username = form_params[:username]
    @password = form_params[:password]

    @user = User.find_by(username: @username).try(:authenticate, @password)

    if @user.present?
      session[:user_id] = @user.id

      flash[:success] = "You are now logged in!"

      redirect_to root_path
    else
      render "new"
    end
  end

  def form_params
    params.require(:session).permit(:username, :password)
  end
end
