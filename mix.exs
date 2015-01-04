defmodule Hexate.Mixfile do
  use Mix.Project

  def project do
    [ app: :hexate,
      version: "0.5.1",
      elixir: ">= 0.15.1",
      description: description,
      package: package,
      deps: deps ]
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
    []
  end

  defp deps do
    [{:earmark, "~> 0.1", only: :dev},
     {:ex_doc, "~> 0.6", only: :dev}]
  end
end
