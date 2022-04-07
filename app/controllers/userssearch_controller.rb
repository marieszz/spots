class UsersSearchController < ApplicationController
  def index
    @users = @users.User.where("username ILIKE ?", "%#{params[:query]}%") if params[:query].present?
  end
end
