class Admin::ProjectsController < ApplicationController
  layout 'admin'

  before_action :authenticate_admin!

  def new
    @project = Project.new
    @url = admin_projects_path
  end
  
  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to admin_projects_path
    else
      render :new
    end
  end
  
  def index
    @projects = Project.all
  end
  
  def edit
    @project = Project.find(params[:id])
    @url = admin_project_path(@project)
  end
  
  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to admin_projects_path
    else
      render :edit
    end
  end
  
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to admin_projects_path
  end
private

  def project_params
    params.require(:project).permit(:title, :category, :description, :url, :image_url)
  end
end
