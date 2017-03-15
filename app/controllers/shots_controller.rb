class ShotsController < ApplicationController
  def index
<<<<<<< HEAD
  	@tab = Tab.find(params[:tab_id])
    @shots = @tab.shots.all

    render json: @shots, status: :ok
  end

  def show
  	@tab = Tab.find(params[:tab_id])
    @shot = Shot.find(params[:id])

    render json: @shot.to_json, include: :shots
=======
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
>>>>>>> dd6ab009e605f2bb090357d994e1312c85432ce1
  end

  def new
    @tab = Tab.find(params[:tab_id])
    @shot = Shot.new

    respond_to do |format|
      format.html {render :show}
      format.json {render json: @shot}
    end
  end

  def create
<<<<<<< HEAD
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
=======
  	@tab = Tab.find(params[:id])
    @shot = @tab.shot.new(shot_params)
    
      if @shot.save
        render json: @shot, status: :created, location: @shot
      else
       render json: @shot.errors, status: :unprocessable_entity
      end
    
>>>>>>> dd6ab009e605f2bb090357d994e1312c85432ce1
  end

  private

  def shot_params
    params.require(:shot).permit(:title, :author, :content)
  end

end
