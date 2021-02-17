class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if @user.valid?
      @user.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
