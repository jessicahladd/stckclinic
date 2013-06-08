class Clinic < ActiveRecord::Base
  attr_accessible :clinic_name, :address_line_1, :address_line_2, :city, :state, :zip_code, :contact_name, :contact_title, :contact_email, :contact_phone, :perc_women, :perc_msm, :perc_under_26, :perc_black, :perc_hispanic, :test_ct, :test_gc, :test_trich, :test_hiv, :diag_ct, :diag_gc, :diag_trich, :diag_hiv, :charge_ct, :deliver_ct_results, :notify_test_ready, :ask_pn
end
