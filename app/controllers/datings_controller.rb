class DatingsController < ApplicationController
  def index
    @datings = Participant.where(user: @user).map(&:dating)
    @dating = Dating.new
    @user = current_user
  end

  def show
    @dating = Dating.find(params[:id])
    @participants = @dating.participants
    @participant = @participants.find_by(user: current_user)
    if @participant.nil?
      redirect_to datings_path, alert: "tu n'es pas participant de ce date !"
    else
      @new_participant = Participant.new
      @suggestions = @dating.suggestions
    end
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
      if @dating.preference == "Bière"
        @bars = Bar.where(beer: true, price_range: price_range)
      elsif @dating.preference == "Vin"
        @bars = Bar.where(wine: true, price_range: price_range)
      elsif @dating.preference == "Cocktail"
        @bars = Bar.where(cocktail: true, price_range: price_range)
      else
        @bars = Bar.where(soft: true, price_range: price_range)
      end
      @bars = @bars.select { |bar| Geocoder.search([bar.latitude, bar.longitude]).first.postal_code == arrondissement }
      @bars.each do |bar|
        suggestion = Suggestion.new(bar: bar, dating: @dating)
        suggestion.save
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
