use Mix.Config

config :hello_tasks, HelloTasks.Repo,
  username: "postgres",
  password: "postgres",
  database: "hello_dev",
  hostname: "localhost",
  pool_size: 10
