class Api::V1::TodosController < ApplicationController
  def index
    todos = get_current_user.todos.all

    render json: todos
  end

  def create
    todo = get_current_user.todos.build(todo_params)
    todo.save

    render json: todo
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy

    render json: todo
  end

  private

  def todo_params
    params.require(:todo).permit(
        :title,
        :description
      )
  end
end
