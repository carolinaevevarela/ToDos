class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end
  def new
    @todo = Todo.new
  end
  def create
    @todo = Todo.new(todo_params)
    redirect_to todos_index_path
  end
  def show
    @todo = Todo.find(params[:id])
  end
  private

  def todo_params
    params.require(:todos).permit(:description, :completed)
  end
end
