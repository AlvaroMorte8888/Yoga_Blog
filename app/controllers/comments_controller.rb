class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comments = @post.comments.create(comments_params)
    redirect_to post_path(@post)
  end
  
  
  private def comments_params
    params.require(:comments).permit(:user_name, :body)
  end    
end
