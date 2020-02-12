class Api::V1::VerticalController < ApplicationController
	skip_before_action :verify_authenticity_token

	def index
		@verticals = Vertical.all
		render :index, :status => 200
	end


	def create
		@vertical = Vertical.create!(vertical_params)
		render :create, :status => 200
	rescue StandardError => e
		puts e
		render_error
	end

	def update
		@vertical = Vertical.find_by!(id: params[:id])
		@vertical.update!(vertical_params)
		render :update, :status => 200
	rescue StandardError => e
		puts e
		render_error
	end


	private
		def vertical_params
			params.require(:vertical).permit(:name)
		end

		def render_error
			return render :json => { message: "Something went wrong" }.to_json, :status => 422
		end

end
