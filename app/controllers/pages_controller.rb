class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :startdating ]

  def home
  end

  def startdating
  end

  def storytime
  end

  def contact
  end

  def aboutus
  end

  def comingsoon
  end
end
