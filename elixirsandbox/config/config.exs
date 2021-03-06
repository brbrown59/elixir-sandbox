# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixirsandbox,
  ecto_repos: [Elixirsandbox.Repo]

# Configures the endpoint
config :elixirsandbox, ElixirsandboxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pOus11lI/GoLiDqT2WSMzuDWXr/Iug4yxADYlRHIJWIFfjrMb4lwEhwMigPQwNmA",
  render_errors: [view: ElixirsandboxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Elixirsandbox.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "FCse05x2q37NF0b9YUO/IF+U43zHoAKy"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
