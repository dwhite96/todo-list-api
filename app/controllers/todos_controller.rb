class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]
  before_action :authenticate_request, only: [:create]

  # GET /todos
  def index
    @todos = Todo.all
    render json: @todos, include: { user: { only: [:handle] } }
  end

  # GET /todos/1
  def show
    render json: @todo
  end

  # POST /todos
  def create
    @todo = @set_user.todos.build(todo_params)

    if @todo.save
      render json: @todo, include: { user: { only: [:handle] } }, status: :created, location: @todo
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /todos/1
  def update
    if @todo.update(todo_params)
      render json: @todo
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /todos/1
  def destroy
    @todo.destroy
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:title, :completed, :user_id)
  end
end
