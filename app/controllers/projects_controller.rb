class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @entries = @project.conversations.order(created_at: :desc).page(params[:page]).per(5)
    @entry = Conversation.new
  end

end
