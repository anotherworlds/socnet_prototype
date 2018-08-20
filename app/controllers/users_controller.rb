class UsersController < ApplicationController

  layout 'user'

  def index
    @users = User.all
  end

  def show
    @user = user()
  end

  def edit
    @user = user()
  end

  def update
    @user = user()
    if @user.update(users_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
  def user
      @user = User.find(params[:id])
  end

  def users_params
    params.require(:user).permit(:status, :bio)
  end
end
