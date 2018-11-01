class CommentsController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
 
  def create
    @gossip = Gossip.find(params[:gossip_id])
    @comments = @gossip.comments.create(comment_params)
    redirect_to gossip_path(@gossip)
  end
  def edit
    @comment = Comment.find(params[:gossip_id])
  end
  def update
    @gossip = Gossip.find(params[:id])
    @comment = Comment.find(params[:gossip_id])
    @comment.update(comment_params)
    redirect_to @gossip
  end
 
  private
    def comment_params
      params.require(:comment).permit(:anonymous_commentor, :content)
    end
end

