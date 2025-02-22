class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]
  # GET /todos
  # GET /todos.json
  def index
    @todos = Todo.all
  end


   
  # GET /todos/1
  # GET /todos/1.json
  def show
     @todos = Todo.where("profile_id = ?", params[:id])
  end

  # GET /todos/new
  def new
    @todo = Todos.new

  end

  # GET /todos/1/edit
  def edit
  end

  # POST /todos
  # POST /todos.json
  def create
    @profile = Profile.find(params[:profile_id])
    @todo = @profile.todos.build(todo_params) 
    @todo.user_id = current_user.id
  

    respond_to do |format|
      if @todo.save
        flash[:success] = 'Todo was successfully created.'
        format.html { redirect_to @profile}
        format.json { render :show, status: :created, location: @todo }
      else
        flash[:danger] = 'There was a problem creating the Todo.'
        format.html { render :new }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todos/1
  # PATCH/PUT /todos/1.json
  def update
   

    respond_to do |format|
      if @todo.update(todo_params)
        flash[:success] = 'Todo was successfully updated.'
        format.html { redirect_to profiles_path }
        format.json { render :show, status: :ok, location: @todo }
      else
        flash[:danger] = 'There was a problem updating the Todo.'
        format.html { render :edit }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end






  # DELETE /todos/1
  # DELETE /todos/1.json
  def destroy

    @profile = Profile.find(params[:profile_id]) 
    @todo.user_id = current_user.id
    @todo.destroy
  

    respond_to do |format|

      flash[:success] = 'Todo was successfully destroyed.'
      format.html { redirect_to @profile}
      format.json { head :no_content }
    end
  end




  private

    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_params
      params.require(:todo).permit(:title, :notes , :user_id, :profile_id)
    end
end
