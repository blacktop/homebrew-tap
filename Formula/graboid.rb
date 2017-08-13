class Graboid < Formula
  desc "Clientless docker image downloader."
  homepage "https://github.com/blacktop/graboid"
  url "https://github.com/blacktop/graboid/releases/download/0.4.0/graboid_0.4.0_macOS_amd64.tar.gz"
  version "0.4.0"
  sha256 "a3dd6934379970b519eb22f2b90c69584111366228329e02f3543b342a10fffa"

  def install
    bin.install "graboid"
  end

  test do
    system "#{bin}/graboid --version"
  end
end
