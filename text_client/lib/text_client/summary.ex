defmodule TextClient.Summary do
  alias TextClient.State

  def display(game = %State{tally: tally, game_service: %Hangman.Game{used: used_letters}}) do
    :ok =
      IO.puts([
        "\n",
        "Word so far: #{Enum.join(tally.letters, " ")}\n",
        "Guesses left: #{tally.turns_left}\n",
        "Used letters: #{Enum.join(used_letters, " ")}"
      ])

    game
  end
end
