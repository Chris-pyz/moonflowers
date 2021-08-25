class ActivitiesController < ApplicationController

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


  def show
  end

end
