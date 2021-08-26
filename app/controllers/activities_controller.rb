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
        image_url: helpers.asset_url('noun_Lotus_2517111.png')
      }
    end
  end

  # get /activities/:id -action_path
  def show
    @activity = Activity.find(params[:id])
  end

  # get /activities/new -new_action_path
  def new
    @activity = Activity.new
    @activity.wastes.build
  end

  # post /activities -action_path
  def create
    @activity = Activity.new(activities_params)
    @activity.user = current_user
    if @activity.save
      @waste = Waste.new
      params[:activity][:waste][:material].delete_at(0)
      @waste.material = params[:activity][:waste][:material]
      raise
      @waste.activity = @activity
      @waste.save
      redirect_to @activity, notice: 'Votre action a été correctement ajoutée.'
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
