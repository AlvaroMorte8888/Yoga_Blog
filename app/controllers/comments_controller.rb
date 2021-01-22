class CommentsController < ApplicationController
  #http_basic_authenticate_with name: "adnin", password: "D282546D"
  #Разрешает просматривать незарегистрированым пользователям только  index и show!
  
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end
  
  
  private def comment_params
    params.require(:comment).permit(:username, :body)
  end    
end
