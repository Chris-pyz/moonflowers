class UsersController < ApplicationController

  # /users
  def index
    @users = User.all
  end

  # users/:id
  def show
    @user = current_user
  end

  # users/new
  def new
  end

  # /users
  def create
  end

  # /users/:id/edit
  def edit
  end

  # /users/:id
  def update
  end

  # /users/:id
  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :name, :email, :password, :self_description)
  end

end
