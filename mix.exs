defmodule MathCombinations.Mixfile do
  use Mix.Project

  def project do
    [app: :math_combinations,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  defp description do
    """
      A helper library with functions of Mathematics Combinations
    """
  end

  defp package do
    [licenses: ["MIT License"],
     maintainers: ["M Danillo Pereira"],
     links: %{"GitHub" => "https://github.com/danillop/MathCombinations"}]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end
end
