class DatingsStepsController < ApplicationController
  include Wicked::Wizard
  steps :personal, :social

  def show
    render_wizard
  end

  def create
    @dating = Dating.new(dating_params)
    if @dating.save
      redirect_to datings_steps_path
    else
      render :new
    end
  end
end
