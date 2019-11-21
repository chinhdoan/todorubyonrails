class WelcomeController < ApplicationController
 before_action :authenticate_user!, only: [:new, :edit, :destroy]

  # GET /todos
  # GET /todos.json
  def index
    @users = User.all
  end

 
end
