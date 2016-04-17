class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    respond_with(@projects)
  end

  def new
    @project = Project.new()
    respond_with(@project)
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to patterns_path
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
    respond_with(@project)
  end


  private

  def project_params
    params.require(:project).permit(:client_id, :company_id, :pattern_id)
  end

end
