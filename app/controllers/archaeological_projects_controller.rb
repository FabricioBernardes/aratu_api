class ArchaeologicalProjectsController < ApplicationController
  before_action :set_archaeological_project, only: %i[ show update destroy ]

  # GET /archaeological_projects
  # GET /archaeological_projects.json
  def index
    @archaeological_projects = ArchaeologicalProject.all
  end

  # GET /archaeological_projects/1
  # GET /archaeological_projects/1.json
  def show
  end

  # POST /archaeological_projects
  # POST /archaeological_projects.json
  def create
    @archaeological_project = ArchaeologicalProject.new(archaeological_project_params)

    if @archaeological_project.save
      render :show, status: :created, location: @archaeological_project
    else
      render json: @archaeological_project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /archaeological_projects/1
  # PATCH/PUT /archaeological_projects/1.json
  def update
    if @archaeological_project.update(archaeological_project_params)
      render :show, status: :ok, location: @archaeological_project
    else
      render json: @archaeological_project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /archaeological_projects/1
  # DELETE /archaeological_projects/1.json
  def destroy
    @archaeological_project.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archaeological_project
      @archaeological_project = ArchaeologicalProject.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def archaeological_project_params
      params.expect(archaeological_project: [ :name, :description, :visibility_status, :status, :start_date, :end_date ])
    end
end
