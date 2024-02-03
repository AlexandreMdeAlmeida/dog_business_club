class CreatePetOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :pet_owners do |t|
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
      t.string :dog_name
      t.string :dog_breed
      t.string :additional_info

      t.timestamps
    end
  end
end
