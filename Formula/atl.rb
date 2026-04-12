class Atl < Formula
  desc "Jira and Confluence CLI - a CLI alternative to the Atlassian MCP"
  homepage "https://github.com/enthus-appdev/atl-cli"
  version "1.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/enthus-appdev/atl-cli/releases/download/v1.5.1/atl-darwin-arm64.tar.gz"
      sha256 "d60ec2abf7c311201d4d62b2ac58b349fdfc7cf4ca4dc4427099d0e176d0fb7d"
    end
    on_intel do
      url "https://github.com/enthus-appdev/atl-cli/releases/download/v1.5.1/atl-darwin-amd64.tar.gz"
      sha256 "f62b26a4f8ef19e17d455a529e6ff7e081665f6c312aff6f355508876372cce9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/enthus-appdev/atl-cli/releases/download/v1.5.1/atl-linux-arm64.tar.gz"
      sha256 "d8988546edd5d7fd83f93149626b3d0dffba38ccfca6c07e595b55b67b9de3e9"
    end
    on_intel do
      url "https://github.com/enthus-appdev/atl-cli/releases/download/v1.5.1/atl-linux-amd64.tar.gz"
      sha256 "6d808d7b878f4430404cd1f63a089a1bf554e53e8b07167cba11ebd2873cf87d"
    end
  end

  def install
    binary = if OS.mac?
      Hardware::CPU.arm? ? "atl-darwin-arm64" : "atl-darwin-amd64"
    else
      Hardware::CPU.arm? ? "atl-linux-arm64" : "atl-linux-amd64"
    end
    bin.install binary => "atl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atl --version")
  end
end
