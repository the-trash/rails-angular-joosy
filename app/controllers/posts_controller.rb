class PostsController < ApplicationController
  def index
    # flash[:notice] = "Alert test Post successfully created"
    get_posts_index
  end

  def create
    @post = Post.new post_params

    if @post.save
      redirect_to posts_url,
                  notice: "Post was successfully created."
    else
      get_posts_index      
      render 'posts/index'
    end
  end
end
