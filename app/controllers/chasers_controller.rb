class ChasersController < ApplicationController
  def index
    @shot = Shot.find(params[:id])
    @chasers = @shot.chasers.all

    respond_to do |format|
      format.html { render :show }
      format.json { render json: @chaser }
    end
  end

  def new
    @shot = Shot.find(params[:id])
    @chaser = @shot.chasers.new

    respond_to do |format|
      format.html { render :show }
      format.json { render json: @chaser }
    end
  end

  def create
    @shot = Shot.find(params[:id])
    @chaser = Chaser.create!(chaser_params)
    redirect_to shot_chasers_path(@shot)

    respond_to do |format|
      format.html { render :show }
      format.json { render json: @chaser }
    end
  end

  def show
    @chaser = Chaser.find(params[:id])

    respond_to do |format|
      format.html { render :show }
      format.json { render json: @chaser }
    end
  end

  def chaser_params
    params.require(:chaser).permit(:author, :content)
  end

end
