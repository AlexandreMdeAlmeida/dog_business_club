class WebsiteReview < ApplicationRecord
  belongs_to :pet_owner
  belongs_to :pet_professional
end
