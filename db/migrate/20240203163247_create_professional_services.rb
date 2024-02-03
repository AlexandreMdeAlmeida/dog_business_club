class CreateProfessionalServices < ActiveRecord::Migration[7.0]
  def change
    create_table :professional_services do |t|
      t.references :service, null: false, foreign_key: true
      t.references :pet_professional, null: false, foreign_key: true

      t.timestamps
    end
  end
end
