class DashboardsController < ApplicationController
  before_action :authenticate_admin!

	def index
		@personal_info = PersonalInfo.first
		@academics = Academic.all
		@courses = Course.all
		@personal_infos = PersonalInfo.all
		#purple @colors = ['#bd8bfc', '#9c5396', '#bb6bdd', '#fc8cdf', '#a586d4', '#f7a8ea']
		# mix @colors = ['#003DBF', '#002880', '#001542', '#2B1280', '#440080', '#230042']
		@colors = ['#007FBF','#005580','#044080','#042580']
		@pallet_size = @colors.length   
	end
end