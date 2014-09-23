class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end
  
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(project_params)
    
    if @project.save
      redirect_to @project, notice: 'Project was successfully created'
    else
      flash[:error] = 'Project could not be saved'
      render :new
    end
  end
  
  def show
    @project = Project.find(params[:id])
  end
  
  def edit
    @project = Project.find(params[:id])
  end
  
  def update
    @project = Project.find(params[:id])
    
    if @project.update_attributes(project_params)
      redirect_to @project, notice: 'Project updated'
    else
      render :edit, notice: 'Project did not update'
    end
  end
  
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = 'Project removed'
    redirect_to projects_path
  end
  
  private
    def project_params
      params.require(:project).permit(:title, :category, :description, :url)
    end
end