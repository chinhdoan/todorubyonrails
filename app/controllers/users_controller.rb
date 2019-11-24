class UsersController < ApplicationController

def index
    @users = User.all
end


def show
	@users = User.where("profile_id = ?", params[:id])
end