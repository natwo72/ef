class PostsController < ApplicationController

  def index
    @posts = Post.all
    @categories = Category.all  #test
  end

  def new
    @post = Post.new
    # @categories = Category.all
  end

  def create
    @posts = Post.create(post_params)
    redirect_to @post
  end

  def show
    @category = Category.find(params[:id]) #test
  end




  private
  def post_params
    params.require(:post).permit(:title, :image, category_ids: [] ) 
  end

end
