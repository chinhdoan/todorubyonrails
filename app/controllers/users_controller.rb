class UsersController < ApplicationController

def index
    @users = User.all
end

def new
	@user = User.new(user_params)
	if @user.save
		redirect_to profiles_path
	else
		render 'new'
end