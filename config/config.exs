# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_generated,
  ecto_repos: [PhoenixGenerated.Repo]

# Configures the endpoint
config :phoenix_generated, PhoenixGeneratedWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "d6Zxn63Cx4znmVxRoqaoEGR2J+X/FsgP7n+lFfJ/+IYDC3FYAkTQu2yiJ0cC/9c5",
  render_errors: [view: PhoenixGeneratedWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixGenerated.PubSub,
  live_view: [signing_salt: "zEJ66N0Y"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
