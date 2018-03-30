class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(form_params)

    # Check if the user can be saved
    if @user.save
      # Keep hold off that user
      session[:user_id] = @user.id #:user_id just made up

      # Let the user know they're signed up
      flash[:success] = "Thanks for signing up on picnik!"

      redirect_to root_path
    else
      flash[:error] = "Oooops there was an error with your sign up, please try again!"
      render "new"
    end
  end

  def form_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :subscription_plan, :stripe_token)
  end
end
