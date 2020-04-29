class AcademicsController < ApplicationController
	before_action :authenticate_admin!

	def index
		@academics = Academic.all
	end

	def new
		@academic = Academic.new
	end

	def create
		@academic = Academic.new(academic_params)
		if @academic.save
			msg = t(:saved_academic)
			return redirect_to academic_path(@academic)
		end
		render :new
	end

	def show
		@academic = Academic.find(params[:id])
	end

	def edit
		@academic = Academic.find(params[:id])
	end

	def update
		@academic = Academic.find(params[:id])
		if @academic.update(academic_params)
			return redirect_to academic_path(@academic)
		end
		render :edit
	end

	def destroy
		@academic = Academic.find(params[:id])

		if @academic.delete
			return redirect_to academics_path
		end
		render academics_path
	end

	private
	
	def academic_params
		params.require(:academic).permit(:institution, :course, :start_date, :end_date, :status)
	end
end