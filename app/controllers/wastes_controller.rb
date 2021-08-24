class WastesController < ApplicationController

  def new
    @waste = Waste.new
    @action = Action.find(params[:action_id])
  end

  def create
    @action = Action.find(params[:action_id])
    @waste = Waste.new(waste_params)
    @waste.action = @action

    if @waste.save
      redirect_to action_path(), notice: ""
    else
      render :new
    end

  end

  private

  def waste_params
      params.require(:waste).permit(:quantity, :material)
  end
end
