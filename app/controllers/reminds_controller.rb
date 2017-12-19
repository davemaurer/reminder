class RemindsController < ApplicationController
  before_action :authenticate

  def index
    @reminds = current_user.reminds
  end

  def new
    @remind = Remind.new
  end

  def create
    current_user.reminds.create(remind_params)
    redirect_to reminds_path
  end

  private

  def remind_params
    params.require(:remind).permit(:title)
  end
end
