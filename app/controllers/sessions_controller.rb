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
      render 'new'
    end
  end

  def destroy
    reset_session
    redirect_to signin_url, notice: "Sign-out successful."
  end
end
