class Graboid < Formula
  desc "Clientless docker image downloader."
  homepage "https://github.com/blacktop/graboid"
  url "https://github.com/blacktop/graboid/releases/download/0.9.0/graboid_0.9.0_macOS_amd64.tar.gz"
  version "0.9.0"
  sha256 "74a4644800477990dfe24beaf871ab8cac865f0d4f7f864bef882ab139db26fa"

  def install
    bin.install "graboid"
  end

  test do
    system "#{bin}/graboid --version"
  end
end
