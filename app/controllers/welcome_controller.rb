class WelcomeController < ApplicationController
  def index
    @article = Article.last
    @project = Project.last
  end
end
