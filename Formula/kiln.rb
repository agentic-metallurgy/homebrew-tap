class Kiln < Formula
  desc "GitHub project automation daemon with Claude-powered workflows"
  homepage "https://github.com/agentic-metallurgy/kiln"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agentic-metallurgy/homebrew-tap/releases/download/v#{version}/kiln-darwin-arm64"
      sha256 "006f82ff2ff02bf4bf22a28c71935623d5adffd647656399fd7133a66b6c4189"
    else
      url "https://github.com/agentic-metallurgy/homebrew-tap/releases/download/v#{version}/kiln-darwin-x86_64"
      sha256 "ae8cebb12326d8314952b9f7892eaa0c203923d1926f38dc92516326cfc9f037"
    end
  end

  on_linux do
    url "https://github.com/agentic-metallurgy/homebrew-tap/releases/download/v#{version}/kiln-linux-x86_64"
    sha256 "ccbb9f2bc35ab4f123ac00268c1bfc3ba217fc3c160c2fccec303d89fb98505c"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "kiln"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiln --version")
  end
end
