class Api::V1::CourseController < ApplicationController
	def index
		@courses = Course.all
		render :index, :status => 200
	end


	def create
		@course = Course.new(course_params)
		render :show, :status => 200
	rescue StandardError => e
		puts e
		render_error
	end

	def update
		@course = Course.find_by!(id: params[:id]).update!(course_params)
		render :show, :status => 200
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
