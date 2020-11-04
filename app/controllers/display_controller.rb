class DisplayController < ApplicationController
  skip_before_action :authorize
  def index
    @blogs = Blog.all
    respond_to do |format|
      format.html
      format.js { render 'index', layout: false }
    end
  end
end
