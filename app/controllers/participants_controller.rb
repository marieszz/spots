class ParticipantsController < ApplicationController
  def new
    @dating = Dating.find(params[:dating_id])
    @participant = Participant.new
  end

  def create
    @dating = Dating.find(params[:dating_id])
    @participant = Participant.new(participant_params)
    @participant.dating = @dating
    if @participant.save
      redirect_to new_dating_participant_path(@dating)
    else
      render "datings/new"
    end
  end

  private

  def participant_params
    params.require(:participant).permits(:user_id, :dating_id)
  end
end
