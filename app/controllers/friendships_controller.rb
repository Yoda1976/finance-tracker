class FriendshipsController < ApplicationController
  def create
    friend = User.find(params[:friend])
    
    current_user.friendships.build(friend_id: friend.id)
    if current_user.save
      flash[:notice] = "Following friend #{friend.full_name}"
    else
      flash[:alert] = "There was something wrong with the tracking request"
    end
    redirect_to my_friends_path

  end

  def destroy
    user = User.find(params[:id])
    friendship = current_user.friendships.where(friend_id: params[:id]).first
    friendship.destroy
    flash[:notice] = "#{user.full_name} was successfully removed from your friends list..."
    redirect_to my_friends_path
  end
end
