class MainController < ApplicationController
	def index
		@personal_infos = PersonalInfo.all
		@academics = Academic.all
		@courses = Course.all
		@colors = ['#003DBF', '#002880', '#001542', '#2B1280', '#440080', '#230042']
		@pallet_size = @colors.length 
	end
end