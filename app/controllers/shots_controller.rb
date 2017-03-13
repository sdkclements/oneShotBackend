class ShotsController < ApplicationController
  def index
  	@tab = Tab.find(params[:id])
    @shots = @tab.shots.all.order(:created_at)
    # respond_to do |format|
    #   format.html {render :index}
    #   format.json {render json: @shots}
    # end
  end
  def new
  	@tab = Tab.find(params[:id])
    @shot = @tab.shot.new
  end

  def show
  	@tab = Tab.find(params[:id])
    @shot = @tab.shot.find(params[:id])
    # respond_to do |format|
    #   format.html {render :show}
    #   format.json {render json: @shot}
    # end
  end
  def create
  	@tab = Tab.find(params[:id])
    @shot = @tab.shot.new(shot_params)
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
