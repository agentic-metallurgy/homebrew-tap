# typed: false
# frozen_string_literal: true

class Ralph < Formula
  desc "Ralph - AI agent loop runner"
  homepage "https://github.com/agentic-metallurgy/ralph"
  version "2026.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v2026.4.3/ralph_2026.4.3_darwin_amd64.tar.gz"
      sha256 "065be5242397299ca1202a0c4f58301439f1c773e6f5e6dcce76e5ef86d7a242"
    end
    if Hardware::CPU.arm?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v2026.4.3/ralph_2026.4.3_darwin_arm64.tar.gz"
      sha256 "3a5732e0fbb40955f9bc255e092c01235b0bf118bc7d5b0a53882ba0e88d0afa"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v2026.4.3/ralph_2026.4.3_linux_amd64.tar.gz"
      sha256 "014076118b8979517d2d6f41b2da180f9be6f14dbb08dc2714fd98f5182edac5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v2026.4.3/ralph_2026.4.3_linux_arm64.tar.gz"
      sha256 "b84b0f50451efb1fcc97af7377a45a787e10cff029ac24690a885b39d998ca36"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    system "#{bin}/ralph", "--help"
  end
end
