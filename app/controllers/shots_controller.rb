class ShotsController < ApplicationController
  def index
  	@tab = Tab.find(params[:id])
    @shots = @tab.shots.all.order(:created_at)
    render json: @shots, status: :ok
    # respond_to do |format|
    #   format.html {render :index}
    #   format.json {render json: @shots}
    # end
  end


  def show
  	@tab = Tab.find(params[:id])
    @shot = @tab.shot.find(params[:id])
    render json: @shot, status: :ok
    # respond_to do |format|
    #   format.html {render :show}
    #   format.json {render json: @shot}
    # end
  end
  def create
  	@tab = Tab.find(params[:id])
    @shot = @tab.shot.new(shot_params)
    
      if @shot.save
        render json: @shot, status: :created, location: @shot
      else
       render json: @shot.errors, status: :unprocessable_entity
      end
    
  end

  private

  def shot_params
    params.require(:shot).permit(:title, :author, :content)
  end


end
