class GameController < ApplicationController
  def new
    redirect_to get_url(@pkmon)
  end
  def pkmon
  end
end
