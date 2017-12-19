class CompletionsController < ApplicationController
  def create
    remind.complete!
    redirect_to reminds_path
  end

  def destroy
    remind.mark_incomplete!
    redirect_to reminds_path
  end

  private

  def remind
    current_user.reminds.find(params[:remind_id])
  end
end
