class LikesController < ApplicationController
  # /users/:id
  def create
    # creation de l'instance like
    @activity = Activity.find(params[:activity_id])

    if (@activity.likes.select { |l| l.user == current_user }).count.zero?

      @like = Like.new
      # assignation de @activity avec l'action du user actuel

      # le like est le like du user actuel
      @like.user = current_user
      # assignation du like sur l'action actuelle
      @like.activity = @activity
      @like.save
      redirect_to @activity
    else
      "Déjà liké"
    end
  end
end
