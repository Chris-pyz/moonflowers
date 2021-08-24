class LikesController < ApplicationController


  def show
    # @user = current_user
    @like = Like.find(params[:id])
  end

    def edit
    @like = current_user
  end

  # /users/:id
  def update
    @like = current_user
  end
end
