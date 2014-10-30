class Admin::ArticlesController < ApplicationController
  layout 'admin'

  before_action :authenticate_admin!

  def index
    @articles = Article.all
  end

  def edit
    @article = Article.find_by_slug(params[:id])
    @url = admin_article_path(@article)
  end

  def update
    @article = Article.find_by_slug(params[:id])
    if @article.update(article_params)
      redirect_to admin_articles_path
    else
      render :new
    end
  end

  def new
    @article = Article.new
    @url = admin_articles_path
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to admin_articles_path
    else
      render :new
    end
  end

  def destroy
    @article = Article.find_by_slug(params[:id])
    @article.destroy
    redirect_to admin_articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :slug, :published)
  end
end
