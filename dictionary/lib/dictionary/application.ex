defmodule Dictionary.Application do
  use Application

  import Supervisor.Spec

  def start(_, _) do
    children = [
      worker(Dictionary.WordList, [])
    ]

    options = [
      name: Dictionary.Supervisor,
      strategy: :one_for_one
    ]

    Supervisor.start_link(children, options)
  end
end
