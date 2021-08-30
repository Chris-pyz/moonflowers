class ActivitiesController < ApplicationController

  # get /activities -actions_path
  def index
    @activities = Activity.all
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "shared/info_window", locals: { activity: activity }),
        image_url: helpers.asset_url('moon.png')
      }
    end




    @users = User.all
    @wastes = Waste.all

    @allglass = User.waste_quantities_all["Verre"]
    @allmetals = User.waste_quantities_all["Métal"]
    @allPlastics = User.waste_quantities_all["Plastique"]
    @allpapers = User.waste_quantities_all["Papier"]
    @alldivers = User.waste_quantities_all["Divers"]

    @totalwasteall = @allglass + @allmetals + @allPlastics + @allpapers + @alldivers

    @allglassforchart = @allglass.to_f / @totalwasteall.to_f
    @allmetalsforchart = @allmetals.to_f / @totalwasteall.to_f
    @allplasticsforchart = @allPlastics.to_f / @totalwasteall.to_f
    @allpapersforchart = @allpapers.to_f / @totalwasteall.to_f
    @alldiversforchart = @allPlastics.to_f / @totalwasteall.to_f

    @totalforchart = @allglassforchart + @allmetalsforchart + @allplasticsforchart + @allpapersforchart + @alldiversforchart

  end

  # get /activities/:id -action_path
  def show
    @activity = Activity.find(params[:id])

    @total = 0
    @activity.wastes.each do |waste|
      @total += waste.quantity
    end

    @markers = [{
      lat: @activity.latitude,
      lng: @activity.longitude,
      info_window: render_to_string(partial: "shared/info_window", locals: { activity: @activity }),
      image_url: helpers.asset_url('moon.png')

    }]

  end

  # get /activities/new -new_action_path
  def new
    @activity = Activity.new
    @activity.wastes.build

    @markers = [{
      lat: @activity.latitude,
      lng: @activity.longitude,
      info_window: render_to_string(partial: "shared/info_window_new_act", locals: { activity: @activity }),
      image_url: helpers.asset_url('moon.png')

    }]
  end

  # post /activities -action_path
  def create
    @activity = Activity.new(activities_params)
    @activity.user = current_user

    if @activity.save
      unless params[:verre] == ""
        @waste = Waste.new
        @waste.material = "Verre"
        @waste.quantity = params[:verre].to_i
        @waste.activity = @activity
        @waste.save
      end
      unless params[:papier] == ""
        @waste = Waste.new
        @waste.material = "Papier"
        @waste.quantity = params[:papier].to_i
        @waste.activity = @activity
        @waste.save
      end
      unless params[:plastique] == ""
        @waste = Waste.new
        @waste.material = "Plastique"
        @waste.quantity = params[:plastique].to_i
        @waste.activity = @activity
        @waste.save
      end
      unless params[:metal] == ""
        @waste = Waste.new
        @waste.material = "Métal"
        @waste.quantity = params[:metal].to_i
        @waste.activity = @activity
        @waste.save
      end
      unless params[:divers] == ""
        @waste = Waste.new
        @waste.material = "Divers"
        @waste.quantity = params[:divers].to_i
        @waste.activity = @activity
        @waste.save
      end
      redirect_to @activity, notice: 'Votre action a été correctement ajoutée.'

      @markers = [{
        lat: @activity.latitude,
        lng: @activity.longitude,
        info_window: render_to_string(partial: "shared/info_window_new_act", locals: { activity: @activity }),
        image_url: helpers.asset_url('moon.png')
      }]

    else
      render :new
    end
  end

  # get /activities/:id/edit -edit_action_path
  def edit
    @activity = Activity.find(params[:id])
  end

  # patch(post?) /activities/:id -action_path
  def update
    @activity = Activity.find(params[:id])
    if @activity.update(activities_params)
      redirect_to @activity, notice: 'Votre action a été correctement mise à jour.'
    else
      render :edit
    end
  end

  # delete /activities/:id -action_path
  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to user_path(current_user), notice: 'Votre action a été supprimée.'
  end

  private

  def activities_params
    params.require(:activity).permit(:longitude, :latitude, wastes_attributes: [:material, :quantity])
  end

  def wastes_params
    params[:activity].require(:waste).permit(:material, :quantity)
  end

end
