class Graboid < Formula
  desc "Clientless docker image downloader."
  homepage "https://github.com/blacktop/graboid"
  url "https://github.com/blacktop/graboid/releases/download/0.5.0/graboid_0.5.0_macOS_amd64.tar.gz"
  version "0.5.0"
  sha256 "b5b6a17fdff61a1b49def60596b6cd6bf425d1914fc1dc9bb43a2b30810be4b1"

  def install
    bin.install "graboid"
  end

  test do
    system "#{bin}/graboid --version"
  end
end
