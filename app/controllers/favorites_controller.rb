class FavoritesController < ApplicationController
  def index
  end

  def create
    @favorite = Favorite.create(
      user: current_user,
      concert_id: params[:concert_id]
    )
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
  end

  private def favorite_params
    params.require(:concert_id)
  end
end
