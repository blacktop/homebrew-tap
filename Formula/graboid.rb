class Graboid < Formula
  desc "Clientless docker image downloader."
  homepage "https://github.com/blacktop/graboid"
  url "https://github.com/blacktop/graboid/releases/download/0.2.0/graboid_0.2.0_macOS_amd64.tar.gz"
  version "0.2.0"
  sha256 "4a82f49ade3b75b347af98b4659c04c1adecb5a65d9aab7cc374e9c7fa33313c"

  def install
    bin.install "graboid"
  end

  test do
    system "#{bin}/graboid --version"
  end
end
