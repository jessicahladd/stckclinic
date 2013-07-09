class AddResultsMethodsToClinics < ActiveRecord::Migration
  def change
    add_column :clinics, :deliver_results_in_person, :string
    add_column :clinics, :deliver_results_on_phone_human, :string
    add_column :clinics, :deliver_results_on_phone_automated, :string
    add_column :clinics, :deliver_results_other, :string
  end
end
