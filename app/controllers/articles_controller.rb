class ArticlesController < ApplicationController
  def index
    @articles = Article.published.last(5)
  end

  def show
    @article = Article.find_by_slug(params[:id])
    authorize @article
    @comment = Comment.new
  end
end
