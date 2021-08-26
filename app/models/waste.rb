class Waste < ApplicationRecord
  belongs_to :activity
  MATERIAL = %w[verre papier plastique métal divers].freeze
  validates :material, inclusion: { in: MATERIAL }
end
