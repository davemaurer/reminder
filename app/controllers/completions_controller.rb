class CompletionsController < ApplicationController
  def create
    current_user.reminds.find(params[:remind_id]).touch :completed_at
    redirect_to reminds_path
  end
end
