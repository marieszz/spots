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
      price_range = @dating.price_range
      arrondissement = @dating.arrondissement
      if @dating.preference == "beer"
        @bars = Bar.where(beer: true, price_range: price_range)
        @bars = @bars.select{ |bar| Geocoder.search([bar.latitude, bar.longitude]).first.postal_code == arrondissement }
      elsif @dating.preference == "wine"
        @bars = Bar.where(wine: true, price_range: price_range)
        @bars = @bars.select{ |bar| Geocoder.search([bar.latitude, bar.longitude]).first.postal_code == arrondissement }
      elsif @dating.preference == "cocktail"
        @bars = Bar.where(cocktail: true, price_range: price_range)
        @bars = @bars.select{ |bar| Geocoder.search([bar.latitude, bar.longitude]).first.postal_code == arrondissement }
      else
        @bars = Bar.where(soft: true, price_range: price_range)
        @bars = @bars.select{ |bar| Geocoder.search([bar.latitude, bar.longitude]).first.postal_code == arrondissement }
      end
      @bars.each do |bar|
        Suggestion.new(bar: bar, dating: @dating)
        Suggestion.save!
      end
      redirect_to new_dating_participant_path(@dating)
    else
      render new_dating_path, alert: "Désolée, try again 🧐"
    end
  end

  private

  def dating_params
    params.require(:dating).permit(:user, :preference, :arrondissement, :price_range)
  end
end
