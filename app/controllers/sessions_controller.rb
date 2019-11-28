class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user_id

			redirect_to profiles_path
		else
			flash[:alert] = 'Something was wrong'
			render 'new'
		end
    end

end
