class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :startdating, :storytime, :contact, :aboutus, :comingsoon ]

  def home
    @dating = Dating.new
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
