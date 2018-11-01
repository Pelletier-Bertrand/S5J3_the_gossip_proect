class LikesController < ApplicationController
  def create
    @gossip = Gossip.find(params[:gossip_id])
    if $curent_user != nil
      if @gossip.likes.create(user_id: (User.find_by(name: "#{$curent_user}").id))
        redirect_to gossip_path(@gossip), :notice => 'Liked!'
      else
        redirect_to gossip_redirect(@gossip), :alert => 'An error prevented you from liking this post!'
      end
    end
  end
  def destroy
      @gossip = Gossip.find(params[:gossip_id])
      if @gossip.likes.last.user_id == (User.find_by(name: "#{$curent_user}").id)
        @gossip.likes.where(user_id: (User.find_by(name: "#{$curent_user}").id)).last.destroy
        redirect_to gossip_path(@gossip), :notice => 'Unliked!'
      end
  end

end

