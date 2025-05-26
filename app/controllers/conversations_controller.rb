class ConversationsController < ApplicationController
  before_action :set_project

  def create
    @entry = @project.conversations.new(conversation_params)
    @entry.user = User.first
    @entry.entry_type = "comment"  # always a comment here

    if @entry.save
      flash[:notice] = "Comment added successfully."
      redirect_to project_path(@project)
    else
      flash[:alert] = "Failed to add comment."
      @entries = @project.conversations.order(created_at: :desc).page(params[:page]).per(5)
      render "projects/show"
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def conversation_params
    params.require(:conversation).permit(:message)
  end

end
