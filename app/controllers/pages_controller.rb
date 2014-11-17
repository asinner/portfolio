class PagesController < ApplicationController
  def home
    @projects = Project.last(3)
  end
end
