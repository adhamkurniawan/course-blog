class ProjectsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	before_action :find_project, only: [:show, :edit, :update, :destroy]

	def index
		@projects = Project.all.order("created_at DESC")
	end

	def show
	end

	def new
		@project = current_user.projects.build
	end

	def create
		@project = current_user.projects.build(project_params)

		if @project.save
			redirect_to @project
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @project.update(project_params)
			redirect_to @project
		else
			render 'edit'
		end
	end

	def destroy
		@project.destroy
		redirect_to projects_path
	end

	private
		def project_params
			params.require(:project).permit(:title, :description, :image)
		end

		def find_project
			@project = Project.find(params[:id])
		end
end
