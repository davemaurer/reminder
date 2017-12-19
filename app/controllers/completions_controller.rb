class CompletionsController < ApplicationController
  def create
    remind.complete!
    redirect_to reminds_path
  end

  def destroy
    remind.update_attribute(:created_at, nil)
  end

  private

  def remind
    current_user.reminds.find(params[:remind_id])
  end
end
