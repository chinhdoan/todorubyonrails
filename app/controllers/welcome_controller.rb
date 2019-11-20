class WelcomeController < ApplicationController
 

  # GET /todos
  # GET /todos.json
  def index
    @users = User.all
  end

  # GET /todos/1
  # GET /todos/1.json
  def show
  end

  # GET /todos/new
  def new
    @user = Users.new

  end

  # GET /todos/1/edit
  def edit
  end

  # POST /todos
  # POST /todos.json
  def create
  end

  def update
  end

  def destroy
  end
end
