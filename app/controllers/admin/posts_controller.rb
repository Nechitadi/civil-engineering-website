class Admin::PostsController < Admin::BaseController
  before_action :set_post, only: %i[edit update]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def edit; end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to admin_posts_path
    else
      render 'new'
    end
  end

  def update
    if @post.update(post_params)
      redirect_to admin_posts_path
    else
      render 'edit'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
