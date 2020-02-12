class VerticalController < ApplicationController
	def index
		Vertical.all
	end


	def create(params)
		Vertical.create!(params)
	rescue StandardError => e
		puts e
	end

	def update(params)
		Vertical.find_by!(id: params[:id]).update!(params)
	rescue StandardError => e
		puts e
	end


	private
		def vertical_params
			params.require(:vertical).permit(:name)
		end

end
