class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :update_status]

  def index
    @projects = Project.all
  end

  def show
    @entries = @project.conversations.order(created_at: :desc).page(params[:page]).per(5)
    @entry = Conversation.new
  end

  def update_status
    old_status = @project.status
    new_status = params[:project][:status]

    if new_status.present? && new_status != old_status
      @project.update(status: new_status)

      @project.conversations.create!(
        user: User.first,
        entry_type: :status_change,
        message: "Status changed from #{old_status.titleize} to #{new_status.titleize}"
      )

      flash[:notice] = "Status updated successfully."
    else
      flash[:alert] = "Please select a different status."
    end

    redirect_to project_path(@project)
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

end
