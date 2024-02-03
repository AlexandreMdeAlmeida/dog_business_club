class PetProfessional < ApplicationRecord
  belongs_to :city
  has_many :professional_reviews
  has_many :website_reviews
  has_many :professional_services
  has_many :services, through: :professional_services
end
