class CoursesController < ApplicationController
	before_action :authenticate_admin!

	def index
		@courses = Course.all
	end

	def new
		@course = Course.new
	end

	def create
		@course = Course.new(course_params)
		if @course.save
			msg = t(:saved_course)
			return redirect_to course_path(@course)
		end
		render :new
	end

	def show
		@course = Course.find(params[:id])
	end

	def edit
		@course = Course.find(params[:id])
	end

	def update
		@course = Course.find(params[:id])
		if @course.update(course_params)
			return redirect_to course_path(@course)
		end
		render :edit
	end

	def destroy
		@course = Course.find(params[:id])

		if @course.delete
			return redirect_to courses_path
		end
		render courses_path
	end

	private
	def course_params
		params.required(:course).permit(:name, :duration, :conclusion, :certificate, :institution)
	end
end