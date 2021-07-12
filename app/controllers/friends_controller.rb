class FriendsController < ApplicationController
  
  def search
    if params[:friend].present?
      @friend = params[:friend]
      if @friend
        respond_to do |format|
          format.js { render partial: 'users/friend_result' }
        end
      else
        respond_to do |format|
          flash.now[:alert] = "Please enter a valid name/email to search"
          format.js { render partial: 'users/friend_result' }
        end
      end    
    else
      respond_to do |format|
        flash.now[:alert] = "Please enter a name/email to search"
        format.js { render partial: 'users/friend_result' }
      end
    end
  end
end