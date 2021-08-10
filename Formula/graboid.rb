# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Graboid < Formula
  desc "Clientless docker image downloader."
  homepage "https://github.com/blacktop/graboid"
  version "0.15.6"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/graboid/releases/download/0.15.6/graboid_0.15.6_macOS_x86_64.tar.gz"
      sha256 "a5b8e9dc717f7594800d17ac94abe0501dd6e1c0a87895534a56e14351fa1fb7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/graboid/releases/download/0.15.6/graboid_0.15.6_linux_x86_64.tar.gz"
      sha256 "260a4483b53daf4961817e557a6ddb23a9d24cbfea04161481819a4d46832e32"
    end
  end

  def install
    bin.install "graboid"
  end

  test do
    system "#{bin}/graboid --version"
  end
end
