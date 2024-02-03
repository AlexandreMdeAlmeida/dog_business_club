class CreatePetProfessionals < ActiveRecord::Migration[7.0]
  def change
    create_table :pet_professionals do |t|
      t.references :city, null: false, foreign_key: true
      t.binary :profile_picture
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :password_confirmation
      t.string :gender
      t.string :email
      t.string :phone_number
      t.string :emergency_phone_number
      t.string :address
      t.string :address_line2
      t.string :postal_code
      t.string :state_province
      t.string :business_name
      t.string :profession
      t.string :social_media
      t.binary :professional_certificate
      t.string :company_registration_number
      t.binary :business_license
      t.text :short_bio
      t.string :short_work_description
      t.integer :years_of_experience
      t.string :services_offered
      t.string :business_hours
      t.binary :about_me_video_file
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
