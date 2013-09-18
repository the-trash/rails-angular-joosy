class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def get_posts_index
    @posts = Post.all.limit(10).order("created_at DESC")
  end
end
