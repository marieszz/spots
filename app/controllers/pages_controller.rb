class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :startdating ]

  def home
  end

  def startdating
  end
end
