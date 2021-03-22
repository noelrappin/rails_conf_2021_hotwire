class FavoritesController < ApplicationController
  def create
    Favorite.create(user: current_user, concert_id: params[:concert_id])
    redirect_to(:root)
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to(:root)
  end

  private def favorite_params
    params.require(:concert_id)
  end
end
