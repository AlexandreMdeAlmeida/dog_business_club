class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :country_code
      t.string :language

      t.timestamps
    end
  end
end
