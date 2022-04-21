class UsersController < ApplicationController
  def index

    if params[:query].present?
      sql_query = " \
        users.username ILIKE :query \
        OR users.email ILIKE :query \
      "
      @users = User.where(sql_query, query: "%#{params[:query]}%")
    else
      @users = User.all
    end

    @dating = Dating.last
    @new_participant = Participant.new

  end
end
