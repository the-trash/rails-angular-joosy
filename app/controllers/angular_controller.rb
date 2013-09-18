class AngularController < ApplicationController
  layout 'angular'

  def index
    # flash[:notice] = "Alert test Post successfully created"
  end

  def list
    render json: get_posts_index
  end

  def create
    @post = Post.new post_params

    if @post.save
      response = {
        post: post_params,
        notice: "Post was successfully created."
      }
    else
      response = { errors: @post.errors.to_json }
    end

    render json: response
  end
end
