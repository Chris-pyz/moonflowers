class UsersController < ApplicationController

  # /users
  def index
    @users = User.all
  end

  # users/:id
  def show
    # @user = current_user
    @user = User.find(params[:id])

  end

  # -----------   en attente de savoir si utile ----------
  # users/new
  # def new
  #   @user = User.new
  # end

  # # /users
  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     redirect_to @user, notice: 'user was successfully created.'
  #   else
  #     render :new
  #   end
  # end
  # ------------------------------------------------------------

  # /users/:id/edit
  def edit
    @user = current_user
    # @user = User.find(params[:id])
  end

  # /users/:id
  def update
    @user = current_user
    # @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: 'user was successfully updated.'
    else
      render :edit
    end
  end

  # /users/:id
  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :name, :self_description)
  end

end
