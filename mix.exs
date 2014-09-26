defmodule Hex.Mixfile do
  use Mix.Project

  def project do
    [ app: :hex,
      version: "0.4.1",
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
