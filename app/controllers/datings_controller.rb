class DatingsController < ApplicationController
  def index
    @datings = Dating.all
    @dating = Dating.new
    @user = current_user
  end

  def show
    @participant = Participant.new
  end

  def new
    @dating = Dating.new
  end

  def create
    @dating = Dating.new(params[:dating])
    @dating.user = current_user
    if @dating.save
      redirect_to new_dating_participant_path(@dating)
    else
      render :index
    end
  end
end
