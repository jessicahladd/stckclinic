class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
    	t.string :clinic_name
    	t.string :address_line_1
    	t.string :address_line_2
    	t.string :city
    	t.string :state
    	t.string :zip_code
    	t.string :contact_name
    	t.string :contact_title
    	t.string :contact_email
    	t.string :contact_phone
    	t.string :clinic_type
    	t.string :perc_women
    	t.string :perc_msm
    	t.string :perc_under_26
    	t.string :perc_black
    	t.string :perc_hispanic
    	t.string :test_ct
    	t.string :diag_ct
    	t.string :test_gc
    	t.string :diag_gc
    	t.string :test_trich
    	t.string :diag_trich
    	t.string :test_hiv
    	t.string :diag_hiv
    	t.string :charge_ct
        t.string :deliver_results_online
    	t.string :deliver_ct_results
    	t.string :notify_test_ready
    	t.string :ask_pn
        t.string :clinic_status
      t.timestamps
    end
  end
end
