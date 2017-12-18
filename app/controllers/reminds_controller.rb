class RemindsController < ApplicationController
  before_action :authenticate

  def index
    @reminds = Remind.where(email: session[:current_email])
  end

  def new
    @remind = Remind.new
  end

  def create
    Remind.create(remind_params.merge(email: session[:current_email]))
    redirect_to reminds_path
  end

  private

  def remind_params
    params.require(:remind).permit(:title)
  end
end
