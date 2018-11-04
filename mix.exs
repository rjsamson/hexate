defmodule Hexate.Mixfile do
  use Mix.Project

  def project do
    [ app: :hexate,
      version: "0.6.0",
      elixir: ">= 1.2.0",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps() ]
  end

  defp description do
    """
    A simple module for working with hex strings in Elixir.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*", "CHANGELOG*"],
      contributors: ["Rob Samson", "David Parry"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/rjsamson/hexate",
              "Docs" => "http://hexdocs.pm/hexate/0.5.1/"}
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:mix_test_watch, "~> 0.2", only: :dev},
      {:dogma, "~> 0.1", only: [:dev, :test]},
      {:ex_unit_notifier, "~> 0.1", only: :test},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
end
