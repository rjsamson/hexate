defmodule Hexate.Mixfile do
  use Mix.Project

  def project do
    [ app: :hexate,
      version: "0.5.0",
      elixir: ">= 0.15.1",
      deps: deps ]
  end

  def application do
    []
  end

  defp deps do
    []
  end
end
