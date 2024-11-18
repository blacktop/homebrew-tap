# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoGitfamous < Formula
  desc "Github Event Tracker TUI"
  homepage "https://github.com/blacktop/go-gitfamous"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/blacktop/go-gitfamous/releases/download/v0.1.7/go-gitfamous_0.1.7_macOS_x86_64.tar.gz"
      sha256 "ae639604503c2703f3ba6027f3e2b3806aad647101ea5d35e646546cbbd41fe0"

      def install
        bin.install "gitfamous"
      end
    end
    on_arm do
      url "https://github.com/blacktop/go-gitfamous/releases/download/v0.1.7/go-gitfamous_0.1.7_macOS_arm64.tar.gz"
      sha256 "c1faa43c2556ef12fb5b3496a4e18fe8d3930fcee4856ff3822eb68113cd0c90"

      def install
        bin.install "gitfamous"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blacktop/go-gitfamous/releases/download/v0.1.7/go-gitfamous_0.1.7_linux_x86_64.tar.gz"
        sha256 "d59d80ab97b23e225d20d48d00ab7b5aadf396c82b675e057194046102b55102"

        def install
          bin.install "gitfamous"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blacktop/go-gitfamous/releases/download/v0.1.7/go-gitfamous_0.1.7_linux_arm64.tar.gz"
        sha256 "076b1b0d4fac07c9ce0b9feea71985b5eff44555a191fa46c9675548b3846105"

        def install
          bin.install "gitfamous"
        end
      end
    end
  end

  test do
    system "#{bin}/gitfamous --help"
  end
end
