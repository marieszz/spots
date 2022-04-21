class ParticipantsController < ApplicationController
  def new
    @dating = Dating.find(params[:dating_id])
    @participant = Participant.new
    if params[:query].present?
      sql_query = " \
        users.username ILIKE :query \
        OR users.email ILIKE :query \
      "
      @users = User.where(sql_query, query: "%#{params[:query]}%")
    end
    @suggestions = @dating.suggestions
  end

  def create
    @dating = Dating.find(params[:dating_id])
    @participant = Participant.new(participant_params)
    @participant.dating = @dating
    if @participant.save
      redirect_to dating_suggestions_path(@dating)
    else
      render new_dating_participant_path(@dating)
    end
  end

  private

  def participant_params
    params.require(:participant).permit(:user_id, :dating_id)
  end
end
