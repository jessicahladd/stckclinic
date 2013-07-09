class AddClinicTypesToClinic < ActiveRecord::Migration
  def change
    add_column :clinics, :clinic_type_college, :string
    add_column :clinics, :clinic_type_community, :string
    add_column :clinics, :clinic_type_fp, :string
    add_column :clinics, :clinic_type_pp, :string
    add_column :clinics, :clinic_type_private, :string
    add_column :clinics, :clinic_type_std, :sting
    add_column :clinics, :clinic_type_other, :string
  end
end
