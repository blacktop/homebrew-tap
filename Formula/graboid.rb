class Graboid < Formula
  desc "Clientless docker image downloader."
  homepage "https://github.com/blacktop/graboid"
  url "https://github.com/blacktop/graboid/releases/download/0.11.0/graboid_0.11.0_macOS_amd64.tar.gz"
  version "0.11.0"
  sha256 "e3a00b0f31393e15716202d9de8c792c941b90c017c017115c8efb6c45f9e039"

  def install
    bin.install "graboid"
  end

  test do
    system "#{bin}/graboid --version"
  end
end
