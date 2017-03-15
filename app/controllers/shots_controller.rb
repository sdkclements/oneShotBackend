class ShotsController < ApplicationController
  def index
  	@tab = Tab.find(params[:tab_id])
    @shots = Shots.all

    render json: @shots, status: :ok
  end
  def new
  	@tab = Tab.find(params[:tab_id])
    @shot = Shot.new

    respond_to do |format|
      format.html {render :show}
      format.json {render json: @shot}
    end
  end

  def show
  	@tab = Tab.find(params[:tab_id])
    @shot = Shot.find(params[:id])

    render json: @shot, status: :ok
  end
  def create
  	@tab = Tab.find(params[:tab_id])
    @shot = Shot.new(shot_params)
    # respond_to do |format|
    #   if @shot.save
    #     format.html { redirect_to @shot, notice: "made the shot"}
    #     format.json { render json: @shot, status: :created, location: @shot}
    #   else
    #     format.html { render :new}
    #     format.json {render json: @shot.errors, status: :unprocessable_entity}
    #   end
    # end
  end

  private

  def shot_params
    params.require(:shot).permit(:title, :author, :content)
  end


end
