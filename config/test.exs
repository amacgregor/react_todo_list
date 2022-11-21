import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :react_todo_list, ReactTodoList.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "react_todo_list_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :react_todo_list, ReactTodoListWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "aWUR9cfW0k7yPNRLk5pBrXd0G03w/MI/LKIReYmAU5ZqtLbiZAjl6DU9h9W5VwJ6",
  server: false

# In test we don't send emails.
config :react_todo_list, ReactTodoList.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
