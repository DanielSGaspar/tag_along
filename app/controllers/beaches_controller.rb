class BeachesController < ApplicationController
  def favorite
    @user = current_user
    beach = Beach.find(params[:id])

    if @user.favorited?(beach)
      @user.unfavorite(beach)
    else
      @user.favorite(beach)
    end

    redirect_to beach_path(beach)
  end
end
