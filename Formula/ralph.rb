# typed: false
# frozen_string_literal: true

class Ralph < Formula
  desc "Ralph - AI agent loop runner"
  homepage "https://github.com/agentic-metallurgy/ralph"
  version "2026.4.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v2026.4.1.1/ralph_2026.4.1.1_darwin_amd64.tar.gz"
      sha256 "3bbb503be605e24648b6a8e32b35c0ec5b7e03519e10c6d913b1a4149dc5ab3b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v2026.4.1.1/ralph_2026.4.1.1_darwin_arm64.tar.gz"
      sha256 "5d70c9422fa034de2b9ddb9c275a9a6e7f6d775af96d25854b58150e67080e32"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v2026.4.1.1/ralph_2026.4.1.1_linux_amd64.tar.gz"
      sha256 "43f741811506cae8781257350a2c4527c10114d9147f608c7a3c3fee2b01a133"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v2026.4.1.1/ralph_2026.4.1.1_linux_arm64.tar.gz"
      sha256 "73e453f1c52ebde01bba6677c79add063bbd0b102f9b2f402b39064115c1ac24"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    system "#{bin}/ralph", "--help"
  end
end
