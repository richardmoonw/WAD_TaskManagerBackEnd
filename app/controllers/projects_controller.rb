class ProjectsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :find_project, only: [:show, :update, :destroy]

  def index
    @projects = Project.all
    render json: @projects, each_serializer: ProjectsSerializer
  end
  
  def show
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      render json: {}, status: 201
    end
  end

  def update
    if @project.update(project_params)
      render json: {}, status: 200
    end
  end

  def destroy
    if @project.destroy
      render json: {}, status: 200
    end
  end

  private 

  def project_params
    params.require(:project).permit(:name, :description, :start_at)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end