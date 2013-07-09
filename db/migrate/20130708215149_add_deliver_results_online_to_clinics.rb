class AddDeliverResultsOnlineToClinics < ActiveRecord::Migration
  def change
    add_column :clinics, :deliver_results_online, :string
  end
end
