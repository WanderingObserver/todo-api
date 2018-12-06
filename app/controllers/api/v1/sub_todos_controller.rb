class Api::V1::SubTodosController < ApplicationController
  def index
    todo = get_current_user.todos.find(params[:todo_id].to_i)
    sub_todos = todo.sub_todos.all

    render json: sub_todos
  end

  def create
    todo = get_current_user.todos.find(params[:todo_id].to_i)
    sub_todo = todo.sub_todos.build(sub_todo_params)
    sub_todo.save

    render json: sub_todo
  end

  def destroy
    sub_todo = SubTodo.find(params[:id])
    sub_todo.destroy

    render json: sub_todo
  end

  private

  def sub_todo_params()
    params.require(:sub_todo).permit(
      :description
    )
  end
end
