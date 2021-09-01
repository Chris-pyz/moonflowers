class UsersController < ApplicationController

  # /users
  def index
    @user = current_user
    @users = User.all
  end

  # users/:id
  def show
    # @user = current_user
    @user = User.find(params[:id])
    @user_wastes = @user.waste_quantities
    # @wastes = Waste.all
    # @allglass = @user.waste_quantities["Verre"]
    # @allmetals = @user.waste_quantities["Métal"]
    # @allPlastics = @user.waste_quantities["Plastique"]
    # @allpapers = @user.waste_quantities["Papier"]
    # @alldivers = @user.waste_quantities["Divers"]

    # @totalwasteall = @allglass + @allmetals + @allPlastics + @allpapers + @alldivers

    @allglassforchart = @allglass.to_f / @totalwasteall
    @allmetalsforchart = @allmetals.to_f / @totalwasteall
    @allplasticsforchart = @allPlastics.to_f / @totalwasteall
    @allpapersforchart = @allpapers.to_f / @totalwasteall
    @alldiversforchart = @allPlastics.to_f / @totalwasteall

    @totalforchart =   (if @allglassforchart.nil? @allglassforchart = 0 : @allglassforchart) + @allmetalsforchart + @allplasticsforchart + @allpapersforchart + @alldiversforchart
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

  private

  def user_params
    params.require(:user).permit(:nickname, :name, :self_description, :avatar_photo)
  end
end
