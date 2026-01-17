# typed: false
# frozen_string_literal: true

class Ralph < Formula
  desc "Ralph - AI agent loop runner"
  homepage "https://github.com/agentic-metallurgy/ralph"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v0.1.5/ralph_0.1.5_darwin_amd64.tar.gz"
      sha256 "614165a05bd90d640b14fdefdb5c53590ff7ff691280cfb542c1ca642a082bc3"

      def install
        bin.install "ralph"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v0.1.5/ralph_0.1.5_darwin_arm64.tar.gz"
      sha256 "b19bfd076af4eba61e4a572908ca6c3a5bc0fe65af0fb58d6f8555f8a35eb267"

      def install
        bin.install "ralph"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v0.1.5/ralph_0.1.5_linux_amd64.tar.gz"
      sha256 "b5591ebb05097620a67d5127095781f1779dee7af78cde51dedabf65e7907d06"
      def install
        bin.install "ralph"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/agentic-metallurgy/ralph/releases/download/v0.1.5/ralph_0.1.5_linux_arm64.tar.gz"
      sha256 "d6b3c60c4c9bbd3034c2df6571c0462599c519e3043d47db93920c01ea0f087c"
      def install
        bin.install "ralph"
      end
    end
  end

  test do
    system "#{bin}/ralph", "--help"
  end
end
