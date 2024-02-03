class CreateProfessionalCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :professional_courses do |t|
      t.references :city, null: false, foreign_key: true
      t.string :course_name
      t.text :description
      t.string :course_duration
      t.date :start_date
      t.date :end_date
      t.boolean :online
      t.string :address
      t.string :prerequisites
      t.string :website_url
      t.boolean :certification_provided
      t.string :contact_number

      t.timestamps
    end
  end
end
