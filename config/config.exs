# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :memories,
  ecto_repos: [Memories.Repo]

# Configures the endpoint
config :memories, MemoriesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hKVgFdBL0N1i9TYYjr9Pdrn1+hztlBRIb7skarnUlxZ90GRMfW3e/djvt427d//l",
  render_errors: [view: MemoriesWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Memories.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "yvt5PXhL"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
