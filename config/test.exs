use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :finboard, FinboardWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :finboard, Finboard.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "finboard",
  password: "finboard",
  database: "finboard_test_db",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
