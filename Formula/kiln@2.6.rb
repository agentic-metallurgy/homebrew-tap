class KilnAT26 < Formula
  desc "GitHub project automation daemon with Claude-powered workflows"
  homepage "https://github.com/agentic-metallurgy/kiln"
  version "2.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agentic-metallurgy/homebrew-tap/releases/download/v#{version}/kiln-darwin-arm64"
      sha256 "4797f7fc4d43f28c79cd56e859a130d6fc768f5ffe6a47bc74b92c421263f822"
    else
      url "https://github.com/agentic-metallurgy/homebrew-tap/releases/download/v#{version}/kiln-darwin-x86_64"
      sha256 "8c07c3600780633b05eb3b3c51c2f63aab8e2430105616a16d7c7156b4b8d99a"
    end
  end

  on_linux do
    url "https://github.com/agentic-metallurgy/homebrew-tap/releases/download/v#{version}/kiln-linux-x86_64"
    sha256 "964333cb1abb25a1e33afe64313696acadbc0926cf50b9ce2da2bf0b0413e151"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "kiln"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiln --version")
  end
end
