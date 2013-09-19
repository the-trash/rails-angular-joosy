class AngularController < ApplicationController
  layout 'angular'

  def index; end

  def list
    render json: get_posts_index
  end

  def create
    @post = Post.new insured_post_params

    render json: if @post.save
      {
        post: @post,
        notice: "Post was successfully created."
      }
    else
      { errors: @post.errors }
    end
  end
end
