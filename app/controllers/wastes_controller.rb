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

  def edit
    @waste = Waste.find(params[:id])
  end

  # patch(post?) /activities/:id -action_path
  def update
    @activity = Activity.find(params[:activity_id])
    @waste = Waste.find(params[:id])
    if @waste.update(waste_params)
      redirect_to @activity, notice: 'Votre détritus a été correctement mise à jour.'
    else
      render :edit
    end
  end

  private

  def waste_params
    params.require(:waste).permit(:quantity, :material)
  end
end
