class Activity < ApplicationRecord
  belongs_to :user
  has_many :wastes, dependent: :destroy

  accepts_nested_attributes_for :wastes

  def waste
    wastes.first
  end
end
