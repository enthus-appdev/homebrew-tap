class Esq < Formula
  desc "Query and inspect Elasticsearch clusters across multiple environments"
  homepage "https://github.com/enthus-appdev/esq-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/enthus-appdev/esq-cli/releases/download/v1.1.0/esq-darwin-arm64.tar.gz"
      sha256 "7eabb1b18fc7aed8ff9a0c4d0c5362ae9e7aaacbbe6dd37e8af61e6ccebdfee2"
    end
    on_intel do
      url "https://github.com/enthus-appdev/esq-cli/releases/download/v1.1.0/esq-darwin-amd64.tar.gz"
      sha256 "ce1d2ef27ca1dff503b6586d39e506d7d1e246379a9197724b7b1d847fa8e58a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/enthus-appdev/esq-cli/releases/download/v1.1.0/esq-linux-arm64.tar.gz"
      sha256 "7456965b9a9db5d3ba8685b190f5d775e08f92eb3f2286cc4720349e65bb710d"
    end
    on_intel do
      url "https://github.com/enthus-appdev/esq-cli/releases/download/v1.1.0/esq-linux-amd64.tar.gz"
      sha256 "b6f4055ed623512c27cacbea24e4cf32f6a316f5a59f31cd4290f7e6fe76e5c1"
    end
  end

  def install
    binary = if OS.mac?
      Hardware::CPU.arm? ? "esq-darwin-arm64" : "esq-darwin-amd64"
    else
      Hardware::CPU.arm? ? "esq-linux-arm64" : "esq-linux-amd64"
    end
    bin.install binary => "esq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/esq --version")
  end
end
