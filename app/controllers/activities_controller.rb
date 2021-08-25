class ActivitiesController < ApplicationController

  def index

    @activities = Activity.all
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude
        info_window: render_to_string(partial: "info_window", locals: { activity: activity })
      }

    end
  end
end
