class DatingsController < ApplicationController
  def index
    @datings = Dating.all
  end

  def new
    @participant1 = current_user
    @participant2 = Participant.new
    @dating = Dating.new
  end

  def create
  end
end
