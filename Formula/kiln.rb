class Kiln < Formula
  desc "GitHub project automation daemon with Claude-powered workflows"
  homepage "https://github.com/agentic-metallurgy/kiln"
  version "2.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agentic-metallurgy/homebrew-tap/releases/download/v#{version}/kiln-darwin-arm64"
      sha256 "3683bdbf556b374d26096d80a1a5e4a61554ac0a7f4e7f668e37126c91fe2bfc"
    else
      url "https://github.com/agentic-metallurgy/homebrew-tap/releases/download/v#{version}/kiln-darwin-x86_64"
      sha256 "6a3d21a87d9f6da46c2f14a080110773c502de115a16517166a9b4f34afbf489"
    end
  end

  on_linux do
    url "https://github.com/agentic-metallurgy/homebrew-tap/releases/download/v#{version}/kiln-linux-x86_64"
    sha256 "66594b19b6a7fe57278e1e1d3c14b3eeff2c9e72e49b900b9043daebd63947a8"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "kiln"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiln --version")
  end
end
