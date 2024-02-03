class CreateProfessionalReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :professional_reviews do |t|
      t.float :rating
      t.string :review_text
      t.date :review_date
      t.references :pet_owner, null: false, foreign_key: true
      t.references :pet_professional, null: false, foreign_key: true

      t.timestamps
    end
  end
end
