class TabsController < ApplicationController

  def index
    @tabs = Tab.all

    render json: @tabs, status: :ok
  end

  def show
    @tab = Tab.find(params[:id])

    render json: @tab.to_json, include: :shots
  end

  def new
    @tab = Tab.new
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @tab }
    end
  end

  def create
    @tab = Tab.create!(tab_params)
    render json: @tabs, status: :ok
  end

  # you may want to add delete, at least for admins if you put this project in a
  # portfolio
  private
  def tab_params
    params.require(:tab).permit(:name, :description)
  end


end
