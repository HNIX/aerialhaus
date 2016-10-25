class ProjectsController < Spree::StoreController
  load_and_authorize_resource
  layout 'spree/layouts/spree_application'
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all.order("created_at desc")
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new project_params
    if @project.save
      redirect_to @project, notice: "The project was saved."
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @project.update project_params
      redirect_to @project, notice: "Project has been updated"
    else
      render 'edit'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :link, :image, :category)
  end

end
