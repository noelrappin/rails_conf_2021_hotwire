class FavoritesController < ApplicationController
  def index
  end

  def create
    @favorite = Favorite.create(
      user: current_user,
      concert_id: params[:concert_id]
    )
    head(:ok)
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    head(:ok)
  end

  private def favorite_params
    params.require(:concert_id)
  end
end
