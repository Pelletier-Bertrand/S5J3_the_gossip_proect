class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end
  def new
    @gossip = Gossip.new
  end
  def create 
    if $curent_user != nil
      @gossip = Gossip.create('title' => params.require(:gossip)[:title],
                      'content' => params.require(:gossip)[:content],
                      'user_id' => User.find_by(name: "#{$curent_user}").id)
    end
   redirect_to gossips_path
  end
  def show
    @gossip = Gossip.find(params[:id])
    @id= params[:id]
   
  end
  def destroy
    if $curent_user != nil
      @gossip = Gossip.find(params[:id])
      if @gossip.user_id == (User.find_by(name: "#{$curent_user}").id)
        @gossip.destroy
      else 
      end
    end
    redirect_to gossips_path
  end
  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(gossip_params)
    redirect_to gossips_path
  end
  def edit
    @gossip = Gossip.find(params[:id])
  end 
  private
  def gossip_params
    params.require(:gossip).permit(:content, :anonymous_gossiper)
  end
end
