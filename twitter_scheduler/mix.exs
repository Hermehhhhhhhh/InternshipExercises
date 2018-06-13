defmodule TwitterScheduler.MixProject do
  use Mix.Project

  def project do
    [
      app: :twitter_scheduler,
      version: "0.1.0",
      elixir: "~> 1.6",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :quantum],
      mod: {TwitterScheduler.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 0.9.3"},
      {:quantum, "~> 2.2"},
      {:timex, "~> 3.0"}
    ]
  end
end
