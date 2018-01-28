class GameController < ApplicationController
  def new
    @game = Game.new(params.require(:game).permit(:gameName, :playerCount))

    if @game[:gameName] == "pkmon"
      redirect_to game_pkmon_path
    end
  end
  def pkmon
  end
end
