defmodule Finiamchallenge.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Finiamchallenge.Repo,
      # Start the Telemetry supervisor
      FiniamchallengeWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Finiamchallenge.PubSub},
      # Start the Endpoint (http/https)
      FiniamchallengeWeb.Endpoint
      # Start a worker by calling: Finiamchallenge.Worker.start_link(arg)
      # {Finiamchallenge.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Finiamchallenge.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    FiniamchallengeWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
