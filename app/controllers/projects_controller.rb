class ProjectsController < ApplicationController
	
	def index
		@projects = Project.all
	end

  def show
    @projects = Project.all
  end

  def new
     @project = Project.new
  end

  def create
    params.permit!
    @project = Project.new(params['project'])
    if @project.save
      redirect_to :controller=>'projects',:action=>'index'
    else
      redirect_to :controller=>'projects',:action=>'index'
    end
  end

  def destroy
    @project = Article.find(params[:id])
    logger.info project
    @project.destroy
    redirect_to projects_url
  end

end
