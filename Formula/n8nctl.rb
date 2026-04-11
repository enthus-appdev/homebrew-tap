class N8nctl < Formula
  desc "CLI for managing n8n workflows - pull, push, execute, activate"
  homepage "https://github.com/enthus-appdev/n8n-cli"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/enthus-appdev/n8n-cli/releases/download/v1.2.0/n8nctl-darwin-arm64.tar.gz"
      sha256 "f9c43b1f6ec2881d8c03f436bb388fd3fd6453f1fbc3856fd03202e50f02614c"
    end
    on_intel do
      url "https://github.com/enthus-appdev/n8n-cli/releases/download/v1.2.0/n8nctl-darwin-amd64.tar.gz"
      sha256 "bbdbf86df69f312cbafa3dfd7e186d05e8eb9341bc5c0c6c96276fb9f8f2a65b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/enthus-appdev/n8n-cli/releases/download/v1.2.0/n8nctl-linux-arm64.tar.gz"
      sha256 "94b8a40bba469c6b4149f0795d849cea15ac9f1685f7d77339a6e5da414858a0"
    end
    on_intel do
      url "https://github.com/enthus-appdev/n8n-cli/releases/download/v1.2.0/n8nctl-linux-amd64.tar.gz"
      sha256 "ed107a56a0e75b5349cab319195e5cf172e9ea020ace0d1c8aab70853591900e"
    end
  end

  def install
    bin.install Dir["n8nctl-*"].first => "n8nctl"
  end

  test do
    assert_match "n8nctl", shell_output("#{bin}/n8nctl --version")
  end
end
