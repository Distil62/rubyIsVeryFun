class Admin::PostsController < Admin::AdminController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def edit
  @posts = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to path_admin_posts
    else
      render template: '/admin/post/new'
    end
  end

  def update
    post = Post.find(params[:id])
    post.update_attributes(params[:post])
    redirect_to(admin_post_path)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to admin_post_path
  end

  private
  def post_params
    params.require(:post).permit(
      :title,
      :content,
      :category_id,
      :picture
    ).merge(user_id: current_user.id)
  end
end
