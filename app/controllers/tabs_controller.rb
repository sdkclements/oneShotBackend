class TabsController < ApplicationController

  def index
    @tabs = Tab.all

    # respond_to do |format|
    #   format.html { render :show }
    #   format.json { render json: @tab }
    # end
  end

  def new
    @tab = Tab.new

    # respond_to do |format|
    #   format.html { render :show }
    #   format.json { render json: @tab }
    # end
  end

  def create
    @tab = Tab.create!(tab_params)
    redirect_to tab_path(@tab)

    # respond_to do |format|
    #   format.html { render :show }
    #   format.json { render json: @tab }
    # end
  end

  def show
    @tab = Tab.find(params[:id])

    # respond_to do |format|
    #   format.html { render :show }
    #   format.json { render json: @tab }
    # end
  end

  def tab_params
    params.require(:tab).permit(:name, :description)
  end


end
