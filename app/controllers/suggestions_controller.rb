class SuggestionsController < ApplicationController
  def index
    @dating = Dating.find(params[:dating_id])
    @suggestions = Suggestion.where(dating: @dating)

    # the `geocoded` scope filters only bars with coordinates (latitude & longitude)

  end
end
