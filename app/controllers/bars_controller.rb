class BarsController < ApplicationController
  def index
    @bars = Bar.all

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
