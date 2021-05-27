use Mix.Config

config :hello_tasks,
  ecto_repos: [HelloTasks.Repo]

config :hello_tasks, HelloTasks.Repo,
  username: "postgres",
  password: "postgres",
  database: "hello_test",
  hostname: "localhost",
  pool_size: 10
