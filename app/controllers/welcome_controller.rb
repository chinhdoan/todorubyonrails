class WelcomeController < ApplicationController
 

  # GET /todos
  # GET /todos.json
  def index
    @users = User.all
  end

 
end
