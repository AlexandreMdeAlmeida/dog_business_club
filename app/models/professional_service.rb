class ProfessionalService < ApplicationRecord
  belongs_to :service
  belongs_to :pet_professional
end
