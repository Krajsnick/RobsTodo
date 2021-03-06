class TodosController < ApplicationController
  respond_to :json

  def index
    respond_with Todo.all.reverse_order
  end

  def show
    respond_with Todo.find(params[:id])
  end

  def create
    respond_with Todo.create(todo_params)
  end

  def update
    respond_with Todo.update(params[:id], todo_params)
  end

  def destroy
    respond_with Todo.destroy(params[:id])
  end

  private

  def todo_params
    params.permit(:text, :done)
  end
end
