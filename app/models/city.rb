class City < ApplicationRecord
  belongs_to :country
  has_many :activities
  has_many :professional_courses
  has_many :pet_owners
  has_many :pet_professionals
end
