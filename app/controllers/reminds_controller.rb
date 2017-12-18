class RemindsController < ApplicationController
  def index

  end

  def new
    @remind = Remind.new
  end
end
