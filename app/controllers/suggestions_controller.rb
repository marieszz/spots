class SuggestionsController < ApplicationController
  def index
    @dating = Dating.find(params[:dating_id])
    @suggestions = Suggestion.where(dating: @dating)

    # the `geocoded` scope filters only bars with coordinates (latitude & longitude)
    @markers = @dating.bars.geocoded.map do |bar| {
      lat: bar.latitude,
      lng: bar.longitude,
      info_window: render_to_string(partial: "info_window", locals: { bar: bar })
      }
    end
  end
end
