class UsersController < ApplicationController
  def index
    @users = User.where("username ILIKE ?", "%#{params[:query]}%") if params[:query].present?
    @dating = Dating.last
    @new_participant = Participant.new
  end
end
