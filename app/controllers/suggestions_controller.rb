class SuggestionsController < ApplicationController
  def index
    @dating = Dating.find(params[:dating_id])
    @suggestions = Suggestion.where(dating: @dating)
    @bars = []
    @suggestions.each do |suggestion|
      @bars << suggestion.bar
    end
    # the `geocoded` scope filters only bars with coordinates (latitude & longitude)
    @markers = @bars.geocoded.map do |bar|
      {
        lat: bar.latitude,
        lng: bar.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bar: bar })
      }
    end
  end
end
