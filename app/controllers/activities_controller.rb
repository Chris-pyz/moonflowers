class ActivitiesController < ApplicationController

  def index

    @activities = Activity.all
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude
      }
    end
  end
end
