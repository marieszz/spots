class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :startdating ]

  def home
    @dating = Dating.new
  end

  def startdating
  end
end
