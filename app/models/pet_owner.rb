class PetOwner < ApplicationRecord
  belongs_to :city
  has_many :professional_reviews
  has_many :website_reviews
end
