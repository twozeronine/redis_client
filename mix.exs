defmodule RedisClient.MixProject do
  use Mix.Project

  def project do
    [
      app: :redis_client,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {RedisClient.Application, []}
    ]
  end

  defp deps do
    [
      {:redix, "~> 1.1"},
      {:castore, ">= 0.0.0"}
    ]
  end
end
