class Waste < ApplicationRecord
  belongs_to :activity
  MATERIALS = %w[verre papier plastique métal divers].freeze
  validates :material, inclusion: { in: MATERIALS }
end
