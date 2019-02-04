class OkiniirisController < ApplicationController
  def create
    micropost = Micropost.find(params[:follow_id])
    current_user.like(micropost)
    flash[:success] = "Micropostをお気に入りにしました"
    redirect_to "/"
  end

  def destroy
    micropost = Micropost.find(params[:follow_id])
    current_user.dislike(micropost)
    flash[:success] = "Micropostをお気に入りから外しました"
    redirect_to "/"
  end
end
