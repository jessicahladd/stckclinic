class Clinic < ActiveRecord::Base
  attr_accessible :clinic_name, :address_line_1, :address_line_2, :city, :state, :zip_code, :contact_name, :contact_title, :contact_email, :contact_phone, :clinic_type_college, :clinic_type_community, :clinic_type_fp, :clinic_type_pp, :clinic_type_private, :clinic_type_std, :clinic_type_other, :perc_women, :perc_msm, :perc_under_26, :perc_black, :perc_hispanic, :test_ct, :test_gc, :test_trich, :test_hiv, :diag_ct, :diag_gc, :diag_trich, :diag_hiv, :charge_ct, :deliver_ct_results, :notify_test_ready, :ask_pn, :deliver_results_online, :clinic_status, :deliver_results_in_person, :deliver_results_on_phone_human, :deliver_results_on_phone_automated, :deliver_results_other, :tag_list
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
  def tag_list
  	self.tags.collect do |tag|
  		tag.name
  	end.join(", ")
  end
end
