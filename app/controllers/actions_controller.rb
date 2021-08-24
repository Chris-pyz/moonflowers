class ActionsController < ApplicationController

  # get /actions -actions_path
  def index
    @actions = Action.all
  end

  # get /actions/:id -action_path
  def show
    @action = Action.find(params[:id])
  end

  # get /actions/new -new_action_path
  def new
    @action = Action.new
  end

  # post /actions -action_path
  def create
    @action = Action.new(action_params)
    @action.user = current_user

    if @action.save
      redirect_to @action, notice: 'Your action was successfully created.'
    else
      render :new
    end
  end

  # get /actions/:id/edit -edit_action_path
  def edit
    @action = Action.find(params[:id])
  end

  # patch(post?) /actions/:id -action_path
  def update
    @action = Action.find(params[:id])
    if @action.update(action_params)
      redirect_to @action, notice: 'Your action was successfully update.'
    else
      render :edit
    end
  end

  # delete /actions/:id -action_path
  # def destroy
  #   @action = Action.find(params[:id])
  #   @action.destroy
  #   redirect_to actions_path, notice: 'Your action was successfully destroyed.'
  # end

  private

  def action_params
    params.require(:action).permit(:longitude, :latitude)
  end


end
