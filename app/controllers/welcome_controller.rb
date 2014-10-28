class WelcomeController < ApplicationController
  def index
    @article = Article.last
  end
end
