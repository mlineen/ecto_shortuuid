defmodule Ecto.ShortUUID.MixProject do
  use Mix.Project

  @name "Ecto.ShortUUID"
  @app :ecto_shortuuid
  @version "0.1.3"
  @url "https://github.com/gpedic/ecto_shortuuid"

  def project do
    [
      app: @app,
      version: @version,
      elixir: "~> 1.5",
      test_coverage: [tool: ExCoveralls],
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      description: description(),
      package: package()
    ]
  end

  defp description do
    """
    Ecto.ShortUUID is a custom Ecto type which adds support for ShortUUID in Ecto schemas

    More info on ShortUUID: https://github.com/gpedic/ex_shortuuid
    """
  end

  defp docs() do
    [
      main: @name,
      source_ref: "v#{@version}",
      source_url: @url,
      extras: [
        "README.md",
        "CHANGELOG.md"
      ]
    ]
  end

  defp package do
    # These are the default files included in the package
    [
      name: @app,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Goran Pedić"],
      licenses: ["MIT"],
      links: %{"GitHub" => @url}
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
      {:ex_doc, ">= 0.14.0", only: :dev, runtime: false},
      {:dialyxir, "~> 1.0.0-rc.4", only: [:dev], runtime: false},
      {:excoveralls, ">= 0.7.0", only: :test},
      {:benchfella, "~> 0.3.5", only: [:dev, :test]},
      {:shortuuid, "~> 2.1.1"},
      {:ecto, "~> 2.2 or ~> 3.0"}
    ]
  end
end
