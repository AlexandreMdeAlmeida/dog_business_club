class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.references :city, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :website_url
      t.date :activity_date
      t.string :address
      t.decimal :latitude
      t.decimal :longitude
      t.string :contact_number
      t.time :opening_time

      t.timestamps
    end
  end
end
