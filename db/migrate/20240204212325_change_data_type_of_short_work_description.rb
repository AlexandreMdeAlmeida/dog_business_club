class ChangeDataTypeOfShortWorkDescription < ActiveRecord::Migration[7.0]
  def change
    change_column :pet_professionals, :short_work_description, :text
  end
end
