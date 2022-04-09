class SuggestionsController < ApplicationController
  def index
    @dating = Dating.find(params[:dating_id])
    @suggestions = Suggestion.where(dating: @dating)
  end
end
