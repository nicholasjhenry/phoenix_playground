# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_playground,
  ecto_repos: [PhoenixPlayground.Repo]

# Configures the endpoint
config :phoenix_playground, PhoenixPlaygroundWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "w+Bj3RWzRPCfbB8bmRh+4yHX5Yy0mwjn5t3dmPZhLOkDQVCXkbos+/XPmrwB8IRT",
  render_errors: [view: PhoenixPlaygroundWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixPlayground.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
