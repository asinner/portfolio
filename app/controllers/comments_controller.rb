class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  def create
    @article = Article.find_by_slug(params[:article_id])
    @comment = @article.comments.new(comment_params)
    if @comment.save
      flash[:notice] = 'Comment was successfully created'
      redirect_to article_path(@article)
    else
      render 'articles/show'
    end
  end

  def update
    @article = @comment.article
    if @comment.update_attributes(comment_params)
      redirect_to article_path(@article)
    else
      render 'articles/article'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :author_url, :author_email, :content, :approved)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end
