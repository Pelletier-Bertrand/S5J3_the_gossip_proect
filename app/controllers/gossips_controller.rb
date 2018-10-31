class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end
  def new
    @gossip = Gossip.new
  end
  def create 
    @gossip = Gossip.create('title' => params.require(:gossip)[:title],
                    'content' => params.require(:gossip)[:content],
                    'anonymous_gossiper' => params.require(:gossip)[:anonymous_gossiper])
   redirect_to gossips_path
  end
  def show
    @id= params[:id]
   
  end
  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
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
  def gossip_params
    params.require(:gossip).permit(:content, :anonymous_gossiper)
  end
end
