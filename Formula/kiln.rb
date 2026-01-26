class Kiln < Formula
  desc "GitHub project automation daemon with Claude-powered workflows"
  homepage "https://github.com/agentic-metallurgy/kiln"
  version "2.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agentic-metallurgy/homebrew-tap/releases/download/v#{version}/kiln-darwin-arm64"
      sha256 "f02110c3f86ffe50295101f6b4461ba3f75ea532ad6e87151f557a5a73d26fd1"
    else
      url "https://github.com/agentic-metallurgy/homebrew-tap/releases/download/v#{version}/kiln-darwin-x86_64"
      sha256 "152b9230a7369ef7dc3fac02da70572a2c028603e949b57cbd4fd454c69dd8f3"
    end
  end

  on_linux do
    url "https://github.com/agentic-metallurgy/homebrew-tap/releases/download/v#{version}/kiln-linux-x86_64"
    sha256 "5ab440cbdcb65e82687896c5ea2d31908f8c73f7f45623d783a136db3258e285"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "kiln"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiln --version")
  end
end
