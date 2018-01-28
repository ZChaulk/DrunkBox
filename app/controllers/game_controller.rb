class GameController < ApplicationController
  def new
    @game = Game.new(new_game_params)

    if @game[:playerCount] == nil || @game[:playerCount] <= 0
      redirect_to welcome_game_path :action => "error",  alert: "Invalid Value for player count!"
    else
      if @game[:gameName] == "pkmon"
        redirect_to game_pkmon_path :action => "start", playerCount: @game[:playerCount]
      end
    end
  end

  def pkmon

  end

  private
  def new_game_params
    params.require(:game).permit(:gameName, :playerCount)
  end
end
