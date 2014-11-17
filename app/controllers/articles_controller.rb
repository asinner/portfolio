class ArticlesController < ApplicationController
  def index
    @most_recent = Article.most_recent_titles(5)
    @articles = Article.published.last(5)
  end

  def show
    @most_recent = Article.most_recent_titles(5)
    @article = Article.find_by_slug(params[:id])
    authorize @article
    @comment = Comment.new
  end
end
