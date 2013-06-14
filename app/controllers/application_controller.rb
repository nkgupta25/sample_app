class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to Cartmii!"
      redirect_to @user
    else
      render 'new'
    end
  end
end
