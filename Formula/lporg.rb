# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps"
  homepage "https://github.com/blacktop/lporg"
  version "20.4.16"
  license "MIT"
  depends_on :macos

  on_macos do
    url "https://github.com/blacktop/lporg/releases/download/v20.4.16/lporg_20.4.16_macOS_universal.tar.gz"
    sha256 "944a54f2f5071e846ef9d0a9b17d6f230458598cd261df9073ca126bddfe3c3b"

    def install
      bin.install "lporg"
    end
  end

  test do
    system "#{bin}/lporg --version"
  end
end
