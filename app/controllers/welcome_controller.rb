class WelcomeController < ApplicationController
  def index
    @article = Article.published.last
  end
end
