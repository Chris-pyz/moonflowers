class LikesController < ApplicationController
  # /users/:id
  def create
    # creation de l'instance like
    @like = Like.new
    # assignation de @activity avec l'action du user actuel
    @activity = Activity.find(params[:activity_id])
    # le like est le like du user actuel
    @like.user = current_user
    # assignation du like sur l'action actuelle
    @like.activity = @activity
    @like.save
    redirect_to @activity
  end
end
