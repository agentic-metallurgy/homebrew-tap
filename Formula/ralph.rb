# typed: false
# frozen_string_literal: true

class Ralph < Formula
  desc "Ralph - AI agent loop runner"
  homepage "https://github.com/agentic-metallurgy/ralph"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v2.0.0/ralph"
      sha256 "5d17147e238608d51a847c75b93e8feaf218a5a25b41de1256e3ca5ae130967d"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    system "#{bin}/ralph", "--help"
  end
end
