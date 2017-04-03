class ChasersController < ApplicationController
  # one can use before_action to DRY up your controller code, but
  # http://blog.thefrontiergroup.com.au/2014/02/before_action_an_anti_pattern/

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

  # don't need new here. the function of using new and edit is to render views
  # update
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
    redirect_to shot_chasers_path @shot
    render json: @chasers, status: :ok
  end

  private

  def chaser_params
    params.require(:chaser).permit(:author, :content)
  end

end
