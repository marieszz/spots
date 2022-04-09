class SuggestionsController < ApplicationController
  def index
    @dating = Dating.find(params[:dating_id])
    @suggestions = Suggestion.where(dating: @dating)
    @bars = []
    @suggestions.each do |suggestion|
      @bars << suggestion.bar
    end
  end
end
