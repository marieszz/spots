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
    @dating = Dating.new(dating_params)
    @dating.user = current_user
    if @dating.save
      Participant.create(dating: @dating, user: current_user)
      redirect_to new_dating_participant_path(@dating)
      Suggestion.create()
    else
      render :index
    end
  end

  private

  def dating_params
    params.require(:dating).permit(:user, :preferences, :price_range)
  end
end
