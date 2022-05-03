defmodule PhoenixGenerated.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      PhoenixGenerated.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: PhoenixGenerated.PubSub}
      # Start a worker by calling: PhoenixGenerated.Worker.start_link(arg)
      # {PhoenixGenerated.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: PhoenixGenerated.Supervisor)
  end
end
