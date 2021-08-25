class Activity < ApplicationRecord
  belongs_to :user
  reverse_geocoded_by :latitude, :longitude do |activity, results|
    if geo = results.first
      activity.address = geo.street + ", "+ geo.city
    end
  end
  after_validation :reverse_geocode
end
