class ClinicsController < ApplicationController
	def admin
		@clinics = Clinic.all
	end
	def show
		@clinic = Clinic.find(params[:id])
		@comment = Comment.new
		@comment.clinic_id = @clinic.id
	end
	def new
		@clinic = Clinic.new
	end
	def new_admin
		@clinic = Clinic.new(params[:clinic])
		@clinic.save
	end
	def create
		@clinic = Clinic.new(params[:clinic])
		@clinic.save
		redirect_to thank_you_path
	end
	def create_admin
		@clinic = Clinic.new(params[:clinic])
		@clinic.save
		redirect_to clinic_path(@clinic)
	end
	def destroy
		@clinic = Clinic.find(params[:id])
		@clinic.destroy

		redirect_to admin_path
	end
	def edit
		@clinic = Clinic.find(params[:id])
	end
	def update
		@clinic = Clinic.find(params[:id])
		@clinic.update_attributes(params[:clinic])

		flash.notice = "Clinic '#{@clinic.clinic_name}' Updated!"

		redirect_to clinic_path(@clinic)
	end
end
