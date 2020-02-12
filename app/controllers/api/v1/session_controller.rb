class Api::V1::SessionController < ApplicationController
	def create
		@user = User.find_or_create_from_auth_hash(auth_hash)
		self.current_user = @user
		redirect_to '/'
	end