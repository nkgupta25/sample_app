class ApplicationController < ActionController::Base
  protect_from_forgery

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
