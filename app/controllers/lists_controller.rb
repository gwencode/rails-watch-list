# frozen_string_literal: true

# Lists Controller
class ListsController < ApplicationController
  before_action :set_list, only: %i[show destroy]

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to root_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @lists = List.all
  end

  def show; end

  def destroy
    @list.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
