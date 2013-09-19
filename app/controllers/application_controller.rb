class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def get_posts_index
    @posts = Post.all.limit(30).order("created_at DESC")
  end

  def post_params
    params.require(:post).permit(
      :name,
      :email,
      :raw_content
    )
  end

  def insured_post_params
    post_params
  rescue
    {}
  end
end
