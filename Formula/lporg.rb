class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.8/lporg_17.12.8_macOS_amd64.tar.gz"
  version "17.12.8"
  sha256 "768be1aace1d0d61a77c9cd05d90727b89a8eb1608f832e10234a62aa84532df"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
