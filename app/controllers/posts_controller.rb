class PostsController < ApplicationController
  
  def index # Функция отвечающая на обработку главной страницы.
    @post = Post.all
  end

  def new
    @post = Post.new
  end  
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit # вызывается когда мы переходим на редактирование постов.
    @post = Post.find(params[:id])
  end

  def update #обновляем отредактированиые статьи.
    @post = Post.find(params[:id])

    if (@post.update(post_params)) #обновляется пост
      redirect_to @post
    else
      render 'edit' # возвращем на edit.
    end
  end
  
  def create
    @post = Post.new(post_params)
    
    if (@post.save)
      redirect_to @post
    else
      render 'new' # просто перезагружает страницу.
    end    
  end

  private def post_params
    params.require(:post).permit(:title, :body)
  end
end
