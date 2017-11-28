class TodolistsController < ApplicationController
  def index
    @todolists = Todolist.all
  end

  def show
    @todolist = Todolist.find(params[:id])
  end

  def new
    @todolist = Todolist.new
  end

  def create
    @todolist = Todolist.new(todolists_params)
    if @todolist.save
      redirect_to todolists_path
    else
      render :new
    end
  end

  
  private

  def todolists_params
    params.require(:todolists).permit(:list, :item, :status)
  end
end
