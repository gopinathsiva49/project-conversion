class ConversationsController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @entry = @project.conversations.build(entry_params)
    @entry.user = User.first  # replace with actual current_user in real app

    if @entry.save
      if @entry.status_change?
        @project.update(status: @entry.content)
      end
      redirect_to @project
    else
      render "projects/show", status: :unprocessable_entity
    end
  end

  private

  def entry_params
    params.require(:conversation_entry).permit(:type, :content)
  end
end
