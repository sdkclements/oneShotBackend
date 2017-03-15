class ChasersController < ApplicationController
  def index
    @tab = Tab.find(params[:tab_id])
    @shot = Shot.find(params[:shot_id])
    @chasers = @shot.chasers.all

    render json: @chasers, status: :ok
  end

  def show
    @tab = Tab.find(params[:tab_id])
    @shot = Shot.find(params[:shot_id])
    @chaser = Chaser.find(params[:id])

    render json: @chaser.to_json, status: :ok
  end

  def new
    @tab = Tab.find(params[:tab_id])
    @shot = Shot.find(params[:shot_id])
    @chaser = Chasers.new

    respond_to do |format|
      format.html { render :show }
      format.json { render json: @chaser }
    end
  end

  def create
    @tab = Tab.find(params[:tab_id])
    @shot = Shot.find(params[:shot_id])
    @chaser = Chaser.create!(chaser_params)
    redirect_to shot_chasers_path(@shot)

    render json: @chasers, status: :ok
  end

  private

  def chaser_params
    params.require(:chaser).permit(:author, :content)
  end

end
