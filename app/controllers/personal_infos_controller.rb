class PersonalInfosController < ApplicationController
	before_action :authenticate_admin!

	def index
			@personal_infos = PersonalInfo.all
	end

	def new
			@personal_info = PersonalInfo.new
	end

	def create
			@personal_info = PersonalInfo.new(personal_info_params)
			if @personal_info.save
					return redirect_to personal_info_path(@personal_info)
			end
			render :new
	end

	def show
			@personal_info = PersonalInfo.find(params[:id])
	end

	def edit
			@personal_info = PersonalInfo.find(params[:id])
	end

	def update
			@personal_info = PersonalInfo.find(params[:id])
			if @personal_info.update(personal_info_params)
					return redirect_to personal_info_path(@personal_info)
			end
			render :edit
	end

	def destroy
			@personal_info = PersonalInfo.find(params[:id])

			if @personal_info.delete
					return redirect_to personal_infos_path
			end
			render personal_infos_path
	end

	private

	def personal_info_params
			params.require(:personal_info).permit(:name , :age, :fone, :address, :social)
    end
end
