class RelationshipsController < ApplicationController

  def follow
    # binding.pry
    current_user.follow(params[:id])
    flash[:success] = "フォローしました"
    redirect_to root_path
  end

  def unfollow
    # binding.pry
    current_user.unfollow(params[:id])
    flash[:success] = "フォローを外しました"
    redirect_to root_path
  end
end
