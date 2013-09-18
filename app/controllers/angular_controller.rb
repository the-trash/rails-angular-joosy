class AngularController < ApplicationController
  layout 'angular'

  def index
    # flash[:notice] = "Alert test Post successfully created"
  end

  def list
    render json: get_posts_index
  end
end
