class PostsController < ApplicationController
  def index
    # flash[:notice] = "Alert test Post successfully created"
    @posts = Post.all.limit(10).order("created_at DESC")
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_url,
                  notice: "Post was successfully created."
    else
      @posts = Post.all.limit(10).order("created_at DESC")
      render 'posts/index'
    end
  end

  private

  def post_params
    params.require(:post).permit(
      :name,
      :email,
      :raw_content
    )
  end
end
