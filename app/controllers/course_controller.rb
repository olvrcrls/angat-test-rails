class CourseController < ApplicationController
	def index
		Course.all
	end


	def create(params)
		Course.create!(params)
	rescue StandardError => e
		puts e
	end

	def update(params)
		Course.find_by!(id: params[:id]).update!(params)
	rescue StandardError => e
		puts e
	end

	private
		def course_params
			params.require(:course).permit(:name, :author, :category_id, :author, :state)
		end
end
