class DisplayController < ApplicationController
  skip_before_action :authorize
  def index
    @blogs = Blog.all
  end
end
