class Service < ApplicationRecord
  has_many :professional_services
  has_many :pet_professionals, through: :professional_services
end
