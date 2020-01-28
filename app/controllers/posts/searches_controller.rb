class Posts::SearchesController < ApplicationController
  def index
    @posts = Post.search(params[:name])
  end
end
