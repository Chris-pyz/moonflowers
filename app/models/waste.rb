class Waste < ApplicationRecord
  belongs_to :activity
  MATERIALS = %w[Verre Papier Plastique Métal Divers].freeze
  validates :material, inclusion: { in: MATERIALS }
end
