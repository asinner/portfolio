class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = policy_scope(Article)
  end

  def show
  end

  def new
    @article = Article.new
    authorize(@article)
  end

  def edit
    authorize @article
  end

  def create
    @article = Article.new(article_params)
    authorize(@article)

    if @article.save
      current_user.articles << @article
      redirect_to @article, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_url, notice: 'Article was successfully destroyed.'
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(*policy(@article || Article).permitted_attributes)
  end
end
