use Mix.Config

config :hello_tasks,
  ecto_repos: [HelloTasks.Repo]

import_config "#{Mix.env()}.exs"
