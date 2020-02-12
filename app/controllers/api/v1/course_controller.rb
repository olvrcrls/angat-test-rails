class Api::V1::CourseController < ApplicationController
	skip_before_action :verify_authenticity_token
	
	def index
		@courses = Course.all
		render :index, :status => 200
	end


	def create
		@course = Course.create!(course_params)
		render :create, :status => 200
	rescue StandardError => e
		puts e
		render_error
	end

	def update
		@course = Course.find_by!(id: params[:id])
		@course.update!(course_params)
		render :update, :status => 200
	rescue StandardError => e
		puts e
		render_error
	end

	private
		def course_params
			params.require(:course).permit(:name, :author, :category_id, :author, :state)
		end

		def render_error
			return render :json => { message: "Something went wrong" }.to_json, :status => 422
		end
end
