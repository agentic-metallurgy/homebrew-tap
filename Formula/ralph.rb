# typed: false
# frozen_string_literal: true

class Ralph < Formula
  desc "Ralph - AI agent loop runner"
  homepage "https://github.com/agentic-metallurgy/ralph"
  version "2026.4.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v2026.4.7/ralph_2026.4.7_darwin_amd64.tar.gz"
      sha256 "b68943ed95d5967b729b92a38d301c9386778db88f16ce45f2883707f0283dda"
    end
    if Hardware::CPU.arm?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v2026.4.7/ralph_2026.4.7_darwin_arm64.tar.gz"
      sha256 "85dd5070fd3d5428b834e1f386046713a94c7679b1b5e4ab2b343a3d744d321f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v2026.4.7/ralph_2026.4.7_linux_amd64.tar.gz"
      sha256 "b0ab20a359317db9637e4b2b1d92ae08cf883b7051b7be0ae6213298d3f05902"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v2026.4.7/ralph_2026.4.7_linux_arm64.tar.gz"
      sha256 "2d51a3b5b817d866931c4373082ad0007546e41f061b9b9994e7609c7f784ed9"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    system "#{bin}/ralph", "--help"
  end
end
