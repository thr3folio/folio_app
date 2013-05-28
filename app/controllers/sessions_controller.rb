class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:email])

    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user, notice: 'Sign-in successful.'
    else
      redirect_to sessions_new_url, notice: "Sign-in unsuccessful."
    end
  end

  def destroy
    reset_session
    redirect_to sessions_new_url, notice: "Signed-out successful."
  end
end
