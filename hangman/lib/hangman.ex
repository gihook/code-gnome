defmodule Hangman do
  def new_game() do
    {:ok, pid} = Supervisor.start_child(Hangman.Supervisor, [])
    pid
  end

  def tally(pid) do
    GenServer.call(pid, {:tally})
  end

  def make_move(pid, guess) do
    GenServer.call(pid, {:make_move, guess})
  end
end
