class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.6/lporg_17.12.6_macOS_amd64.tar.gz"
  version "17.12.6"
  sha256 "d00d227d24cf9fa952711935ef28137a3aa5e8bafa95d206bbd05ba8135b2853"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
