defmodule PhoenixGenerated.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      PhoenixGenerated.Repo,
      {DNSCluster, query: Application.get_env(:phoenix_generated, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: PhoenixGenerated.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: PhoenixGenerated.Finch}
      # Start a worker by calling: PhoenixGenerated.Worker.start_link(arg)
      # {PhoenixGenerated.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: PhoenixGenerated.Supervisor)
  end
end
