class CompletionsController < ApplicationController
  def create
    remind.touch :completed_at
    redirect_to reminds_path
  end

  private

  def remind
    current_user.reminds.find(params[:remind_id])
  end
end
