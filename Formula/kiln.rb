class Kiln < Formula
  desc "GitHub project automation daemon with Claude-powered workflows"
  homepage "https://github.com/agentic-metallurgy/kiln"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agentic-metallurgy/homebrew-tap/releases/download/v#{version}/kiln-darwin-arm64"
      sha256 "0be7642edd161df37db9a4e8ff64d9be6306ca2d744582336d374ae936b4b6cf"
    else
      url "https://github.com/agentic-metallurgy/homebrew-tap/releases/download/v#{version}/kiln-darwin-x86_64"
      sha256 "e5087c3edd850ccef6c874121b03337053eba72cafdf49caf1995d79792a8948"
    end
  end

  on_linux do
    url "https://github.com/agentic-metallurgy/homebrew-tap/releases/download/v#{version}/kiln-linux-x86_64"
    sha256 "ab8027ee85b7651fbd302c6972684fd102958b524ae065359de68e88491cd56b"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "kiln"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiln --version")
  end
end
