# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mtncast,
  ecto_repos: [Mtncast.Repo]

# Configures the endpoint
config :mtncast, Mtncast.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LQRt7IgR1YSR3w4y9vIUrIUz1vS924BtEgU9mxx9K45kN6MBMJKkkvNNdLMCQpQ1",
  render_errors: [view: Mtncast.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mtncast.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
