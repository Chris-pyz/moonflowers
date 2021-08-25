class WastesController < ApplicationController

  def new
    @waste = Waste.new
    @activity = Activity.find(params[:activity_id])
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @waste = Waste.new(waste_params)
    @waste.activity = @activity

    if @waste.save
      redirect_to activity_path(), notice: ""
    else
      render :new
    end
  end

  private

  def waste_params
    params.require(:waste).permit(:quantity, :material)
  end
end
