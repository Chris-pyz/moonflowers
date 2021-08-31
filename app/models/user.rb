class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :activities, dependent: :destroy


  has_one_attached :avatar_photo

  def waste_quantities
    quantities = {}
    user_wastes = self.activities.map { |activity|
      activity.wastes
    }.flatten
    user_wastes.each do |waste|
      quantities[waste.material] = quantities[waste.material] ? quantities[waste.material] + waste.quantity : waste.quantity
    end
    return quantities
  end

    def self.waste_quantities_all
    quantities = {}
    Waste.all.each do |waste|
      quantities[waste.material] = quantities[waste.material] ? quantities[waste.material] + waste.quantity : waste.quantity
    end
    return quantities
  end

end
