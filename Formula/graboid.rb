class Graboid < Formula
  desc "Clientless docker image downloader."
  homepage "https://github.com/blacktop/graboid"
  url "https://github.com/blacktop/graboid/releases/download/0.6.0/graboid_0.6.0_macOS_amd64.tar.gz"
  version "0.6.0"
  sha256 "0bb4d6b44dc42c6b6343d6552481211ba48fdfde449de57cf4fe4bf670803785"

  def install
    bin.install "graboid"
  end

  test do
    system "#{bin}/graboid --version"
  end
end
