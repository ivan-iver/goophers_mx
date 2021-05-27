defmodule HelloTasks.Application do
  use Application

  def start(_type, _args) do
    children = [
      HelloTasks.Repo
    ]

    opts = [strategy: :one_for_one, name: HelloTasks.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
