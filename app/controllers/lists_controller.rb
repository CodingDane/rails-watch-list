class ListsController < ApplicationController
  before_action :authenticate_user!

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    # raise
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: unprocessable_entity
    end
  end

  def show
    @list = List.find(params[:id])
  end

  private

  def list_params
    params.require(:wa_li_list).permit(:name, :photo)
  end
end
