class Api::V1::CategoryController < ApplicationController
	skip_before_action :verify_authenticity_token

	def index
		@categories = Category.all
		render :index, :status => 200
	end


	def create
		@category = Category.create!(category_params)
		render :create, :status => 200
	rescue StandardError => e
		puts e
		render_error
	end

	def update
		@category = Category.find_by!(id: params[:id])
		@category.update!(category_params)
		render :update, :status => 200
	rescue StandardError => e
		puts e
		render_error
	end

	private
		def category_params
			params.require(:category).permit(:name, :vertical_id, :state)
		end

		def render_error
			return render :json => { message: "Something went wrong" }.to_json, :status => 422
		end
end
