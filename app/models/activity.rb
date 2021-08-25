class Activity < ApplicationRecord
  belongs_to :user
  has_many :wastes
  accepts_nested_attributes_for :wastes

  def waste
    wastes.first
  end
end
