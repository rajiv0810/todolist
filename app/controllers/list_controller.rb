class ListController < ApplicationController

	def index
		@task = Task.new
	end

	def show
		@task = Task.find(params[:id])
	end

	def new
		@task = Task.new
	end

	def create
		@task = Task.new(task_params)

		if @task.save
			redirect_to @task
		else
			render 'new'
		end
	end

	private
	def task_params
		params.require(:task).permit(:title, :text)
	end


end
