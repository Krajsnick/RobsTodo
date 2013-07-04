class TodosController < ApplicationController
  respond_to :json

  def index
    respond_with Todo.all  
  end

  def show
    respond_with Todo.find(params[:id])
  end

  def create
    respond_with Todo.create(todo_params)
  end

  def update
    respond_with Todo.update_params(params[:id], todo_params)
  end

  def destroy
    respond_with Todo.destroy(params[:id])
  end

  private

  def todo_params
    params.require(:todos).permit!
  end
end
