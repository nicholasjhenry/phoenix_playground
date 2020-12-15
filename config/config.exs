# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :phoenix_generated,
  ecto_repos: [PhoenixGenerated.Repo]

config :phoenix_generated_web,
  ecto_repos: [PhoenixGenerated.Repo],
  generators: [context_app: :phoenix_generated]

# Configures the endpoint
config :phoenix_generated_web, PhoenixGeneratedWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xIQ8qV31m3PqV94FRnBajlW+EGExp5fPov2qIR2omLY6iCw/lma0OwCPaIxfOvqE",
  render_errors: [view: PhoenixGeneratedWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixGenerated.PubSub,
  live_view: [signing_salt: "fyUa89p9"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
