module Admin
  class ProjectsController < ApplicationController
    layout 'admin'

    before_action :authenticate_admin!

    def new
      @project = Project.new
      @url = admin_projects_path
    end

    def create
      @project = Project.new(project_params)
      respond_to do |format|
        if @project.save
          format.html { redirect_to admin_projects_path }
          format.js { render js: 'window.location.href="' + admin_projects_path + '"' }
        else
          format.html { render :new }
          format.js
        end
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
      respond_to do |format|
        if @project.update(project_params)
          format.html { redirect_to admin_projects_path }
          format.js { render js: 'window.location.href="' + admin_projects_path + '"' }
        else
          format.html { render :edit }
          format.js
        end
      end
    end

    def destroy
      @project = Project.find(params[:id])
      @project.destroy
      respond_to do |format|
        format.html { redirect_to admin_projects_path }
        format.js
      end
    end

    private

    def project_params
      params.require(:project).permit(:title, :category, :description, :url, :image_url)
    end
  end
end
