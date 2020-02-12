class CategoryController < ApplicationController
	def index
		Category.all
	end


	def create(params)
		Category.create!(params)
	rescue StandardError => e
		puts e
	end

	def update(params)
		Category.find_by!(id: params[:id]).update!(params)
	rescue StandardError => e
		puts e
	end

	private
		def category_params
			params.require(:category).permit(:name, :vertical_id, :state)
		end
end
