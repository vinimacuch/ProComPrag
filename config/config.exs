# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :procomprag,
  ecto_repos: [ProComPrag.Repo]

# Configures the endpoint
config :procomprag, ProComPrag.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mUum0f5OpF/oj91tE+XldtHDV5RzRCwZ6GxdF3KDj1lau8GI6dq7HsB1pRMA5Z3z",
  render_errors: [view: ProComPrag.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ProComPrag.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
