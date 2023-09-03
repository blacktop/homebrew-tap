# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps"
  homepage "https://github.com/blacktop/lporg"
  version "20.4.12"
  license "MIT"
  depends_on :macos

  on_macos do
    url "https://github.com/blacktop/lporg/releases/download/v20.4.12/lporg_20.4.12_macOS_universal.tar.gz"
    sha256 "bbc430c7a5f2ff47c7792f9fff89cc679c825dcc8bd274a031c734a2ba7956ee"

    def install
      bin.install "lporg"
    end
  end

  test do
    system "#{bin}/lporg --version"
  end
end
