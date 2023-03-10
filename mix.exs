defmodule ExliveryRockeseat.MixProject do
  use Mix.Project

  def project do
    [
      app: :exlivery_rockeseat,
      version: "0.1.0",
      elixir: "~> 1.13",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false},
      {:decimal, "~> 2.0"},
      {:ex_machina, "~> 2.5.0"},
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"] ## se estiver no ambiente de test, compilará o ambiente test/support
  defp elixirc_paths(_), do: ["lib"]
end
