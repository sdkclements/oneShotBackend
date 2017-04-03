class ShotsController < ApplicationController
  def index
    @tab = Tab.find(params[:tab_id])
    @shots = @tab.shots.all
    render json: @shots, status: :ok
  end

  def show
    @tab = Tab.find(params[:id])
    @shots = @tab.shots.find(params[:id])
    render json: @shot.to_json, include: :chasers
  end

  # see other controller comments
  def new
    @tab = Tab.find(params[:tab_id])
    @shot = Shot.new
    respond_to do |format|
      format.html {render :show}
      format.json {render json: @shot}
    end
  end

  def create
    @tab = Tab.find(params[:tab_id])
    @shot = Shot.new(shot_params)
    if @shot.save
      # remove debugging puts statements
      puts "Saved"
      puts "=" * 55
      render json: @shot, status: :created#, location: @shot
    else
      render json: @shot.errors, status: :unprocessable_entity
    end
  end

  private
  def shot_params
    params.require(:shot).permit(:title, :author, :content, :tab_id)
  end
end
