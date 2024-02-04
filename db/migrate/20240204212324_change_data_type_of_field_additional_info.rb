class ChangeDataTypeOfFieldAdditionalInfo < ActiveRecord::Migration[7.0]
  def change
    change_column :pet_owners, :additional_info, :text
  end
end
