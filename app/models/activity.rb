class Activity < ApplicationRecord
  belongs_to :user
  has_many :wastes
  accepts_nested_attributes_for :wastes
  
  reverse_geocoded_by :latitude, :longitude do |activity, results|
    if geo = results.first
      activity.address = geo.street + ", "+ geo.city
    end
  end
  after_validation :reverse_geocode

  def waste
    wastes.first
  end
end
