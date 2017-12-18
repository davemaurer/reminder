class RemindsController < ApplicationController
  def index
    @reminds = Remind.all
  end

  def new
    @remind = Remind.new
  end

  def create
    Remind.create(remind_params)
    redirect_to reminds_path
  end

  private

  def remind_params
    params.require(:remind).permit(:title)
  end
end
