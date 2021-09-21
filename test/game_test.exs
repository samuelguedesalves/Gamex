defmodule Gamex.GameTest do
  use ExUnit.Case

  describe "build/3" do
    test "create a game instance" do
      alias Gamex.Game

      current_date = Date.utc_today()

      game = Game.build("Mario", "Nitendo", current_date)

      assert Map.get(game, :title) == "Mario" && Map.get(game, :publisher) == "Nitendo" &&
               Map.get(game, :release_date) == current_date
    end
  end
end
