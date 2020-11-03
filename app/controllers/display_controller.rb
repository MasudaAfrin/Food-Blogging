class DisplayController < ApplicationController
  def index
    @blogs = Blog.all
  end
end
