# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hermodr,
  ecto_repos: [Hermodr.Repo]

# Configures the endpoint
config :hermodr, HermodrWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Z9NoT+uAH5ogpDjYNPhjU9RLTt0xnvZXZvi8UhZQgmGxsuiBAdQfBBVbvYoEIRsU",
  render_errors: [view: HermodrWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hermodr.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "qZW5seon"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
