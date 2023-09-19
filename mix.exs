defmodule SlimFormatter.MixProject do
  use Mix.Project

  def project do
    [
      app: :slim_formatter,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package()
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:ex_doc, "~> 0.0", only: :dev, runtime: false}
    ]
  end

  defp description do
    "Formatter that omits the same fields when showing left/right diff"
  end

    defp package() do
    [
      name: "slim_formatter",
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/dkuku/slim_formatter"}
    ]
  end
end
