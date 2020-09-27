defmodule TextClient.Summary do
  alias TextClient.State

  def display(game = %State{tally: tally}) do
    :ok =
      IO.puts([
        "\n",
        "Word so far: #{Enum.join(tally.letters, " ")}\n",
        "Guesses left: #{tally.turns_left}\n",
      ])

    game
  end
end
