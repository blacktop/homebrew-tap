class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/18.02.04/lporg_18.02.04_macOS_amd64.tar.gz"
  version "18.02.04"
  sha256 "f90c2463a7230d979a1a011b9417047faee34f9e386ca235afb7504012b83105"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
