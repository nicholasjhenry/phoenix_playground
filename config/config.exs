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
  secret_key_base: "VtLh9Rkpi2yu93dJ8ww2f4b/gyGR1Z20eTcTdn7C7ih2yBMe1agyqEWHME+pjM3B",
  render_errors: [view: PhoenixGeneratedWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixGenerated.PubSub,
  live_view: [signing_salt: "Ka7NbFbR"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
