class PostsController < ApplicationController

  def index
  @posts = Post.all
  @categories = Category.all

  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    @posts = Post.create(post_params)
    redirect_to root_path
  end




  private
  def post_params
    params.require(:post).permit(:title, :image, category_ids: [] ) 
  end

end
