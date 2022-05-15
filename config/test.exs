import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :finiamchallenge, Finiamchallenge.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "finiamchallenge_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :finiamchallenge, FiniamchallengeWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "twV2LEzn+KCF2i/aYCCSxkHBCSCab4m6sn+2GKSo+Y9IBz/4DSN/0e2wCAdreTaH",
  server: false

# In test we don't send emails.
config :finiamchallenge, Finiamchallenge.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
