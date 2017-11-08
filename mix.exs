defmodule GitHub.Ecto.Mixfile do
  use Mix.Project

  def project do
    [
      app: :github_ecto,
      version: "0.0.1",
      description: "Ecto adapter for GitHub API",
      package: package(),
      elixir: "~> 1.0",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
    ]
  end

  def application do
    [applications: [:logger, :ecto, :httpoison]]
  end

  defp deps do
    [
      {:ecto, "2.1.3"},
      {:httpoison, "0.9.2"},
      {:poison, "3.1.0"},
      {:phoenix_ecto, "3.2.1"},
      {:exvcr, "~> 0.7", only: :test}
    ]
  end

  defp package do
    [
      maintainers: ["Wojtek Mach"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/wojtekmach/github_ecto"},
    ]
  end
end
