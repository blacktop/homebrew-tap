class Graboid < Formula
  desc "Clientless docker image downloader."
  homepage "https://github.com/blacktop/graboid"
  url "https://github.com/blacktop/graboid/releases/download/0.3.0/graboid_0.3.0_macOS_amd64.tar.gz"
  version "0.3.0"
  sha256 "2a26433e543014a8d5f5d45317e5f9691695122feb84b516216aaf83ca2fbc50"

  def install
    bin.install "graboid"
  end

  test do
    system "#{bin}/graboid --version"
  end
end
