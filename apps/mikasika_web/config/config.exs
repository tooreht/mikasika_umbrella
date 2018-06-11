# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mikasika_web,
  namespace: MikasikaWeb

# Configures the endpoint
config :mikasika_web, MikasikaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "92rA76+OrwJ6mjHx+YrK5iArenlMKmCnu3uWIl5yjgnJStmBiZ034rg+zOQqzGuI",
  render_errors: [view: MikasikaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MikasikaWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :mikasika_web, :generators,
  context_app: :mikasika

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
