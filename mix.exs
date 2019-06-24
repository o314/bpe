defmodule BPE.Mixfile do
  use Mix.Project

  def project do
    [
      app: :bpe,
      version: "4.6.0",
      description: "BPE Process Engine",
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [mod: {:bpe_otp, []}, applications: [:syn, :n2o, :kvs]]
  end

  def package do
    [
      files: ~w(doc include priv lib src mix.exs LICENSE rebar.config),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :bpe,
      links: %{"GitHub" => "https://github.com/synrc/bpe"}
    ]
  end

  def deps do
    [
      {:rocksdb, "~> 1.2.0"},
      {:syn, "~> 1.6.3"},
      {:kvs, "~> 6.6"}
    ]
  end
end
